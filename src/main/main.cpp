
#include <iostream>
#include <string>
#include <vector>
#include <set>
#include <fstream>
#include <sstream>
#include <map>
#include <glog/logging.h>

#include "brain/query_clusterer.h"
#include "common/defs.h"
#include "common/internal_types.h"
#include "brain/util/model_util.h"
#include "brain/util/eigen_util.h"
#include "brain/util/tf_util.h"
#include "brain/workload/base_tf.h"
#include "brain/workload/lstm.h"
#include "brain/workload/workload_defaults.h"

namespace peloton {
namespace brain {

    struct workload_data {
        void insert(std::string workload_type, double timestamp){
            if(contents.find(workload_type) == contents.end()){
                // insert into a new map
                std::map<double, int> new_;
                new_[timestamp] = 1;
                contents[workload_type] = new_;
            } else {
                // 
                auto& workload_type_ = contents[workload_type];
                if(workload_type_.find(timestamp) == workload_type_.end()){
                    workload_type_[timestamp] = 1;
                } else {
                    workload_type_[timestamp] += 1;
                }
            }
        }

        void clear(){
            contents.clear();
        }
        std::map<std::string, std::map<double, int> > contents;
    };

    struct assignment
    {
        std::map<std::string, int> template_cluster_id;
    };
    

    /**
     * @brief Get the workload classified object
     * 
     * @param current_timestamp 
     * @param last_timestamp 
     * @param data 
     */
    void get_workload_classified(double current_timestamp, double last_timestamp, workload_data& data){
        bool verbose = false;

        //读文件
        std::ifstream ifs("/home/zqs/project/workload_predict/data/result.xls", std::ios::in);
        std::ofstream ofs("/home/zqs/project/workload_predict/data/result_.xls", std::ios::trunc);

        std::string _line;
        int line = 0;
        int cur_period = 0;

        while (getline(ifs, _line)){
            line ++ ;
            //解析每行的数据
            std::stringstream ss(_line);
            std::string _sub;
            std::vector<std::string> subArray;

            //按照逗号分隔
            while (getline(ss, _sub, '\t'))
                subArray.push_back(_sub);
            
            //输出解析后的每行数据
            std::set<int> non_repeated;
            double timestamp;

            // 
            for (size_t i=0; i<subArray.size(); ++i) {
                // 表头： timestamp	txn-items
                if(line == 1){
                    if(verbose)
                        ofs << subArray[i] << "\t";
                } else {
                    // 正式内容：一个时间戳 + 10个key 
                    //          0.024085	160	601601	601602	601603	601604	601605	601606	601607	601608	601609	
                    if(i == 0){
                        // timestamp
                        timestamp = atof(subArray[i].data());
                        if(timestamp > last_timestamp){
                            return;
                        }
                        if(verbose)
                            ofs << subArray[i] << "\t";
                    } else {
                        // 对应的分区
                        non_repeated.insert(atoi(subArray[i].data()) / 200000);
                    }
                }
                if(verbose)
                    std::cout << subArray[i] << "\t";
            }
            // workload_type
            std::string workload_type = "";
            if(verbose)
                ofs << "@";
            for(auto iter = non_repeated.begin(); iter != non_repeated.end(); iter ++ ){
                if(verbose)
                    ofs << *iter;
                workload_type += std::to_string(*iter);
            }
            if(verbose){
                ofs << "\n";
                std::cout << std::endl;  
            }

            if(workload_type != ""){
                // 
                data.insert(workload_type, timestamp);
                if(int(timestamp) / 20 > cur_period){
                    cur_period ++;
                }
            }
        }
    }

    /**
     * @brief 
     * 
     * @param cur_timestamp 
     * @param last_timestamp 
     * @param period_duration 
     * @param sample_interval 
     * @param data 
     * @return QueryClusterer 
     */
    QueryClusterer onlineClustering(std::map<std::string, std::vector<double>>& raw_features_, 
                                    double cur_timestamp, double last_timestamp, 
                                    double period_duration, double sample_interval, 
                                    workload_data& data){
        int feature_nums = int(ceil(period_duration / sample_interval));
        // same cluster merging threshold
        double threshold = 0.8;
        // divide into several period
        int num_gaps = int(ceil(last_timestamp / period_duration));

        QueryClusterer cluster(feature_nums, threshold);
        
        for(int i = 0 ; i < num_gaps; i ++ ){
            VLOG(DEBUG_V6) << "@@@ gap[" << i << "] @@@";
            // loop for each period
            int current_period_ts = i * period_duration;
            int next_period_ts = (i + 1) * period_duration;

            for(auto& d_: data.contents){
                // loop for each template for each period
                // sample using sub-intervals
                std::vector<double> new_feature(feature_nums, 0);
                int interval_cnt = 0;
                int interval_sum = 0;
                int total_sample_num = 0;

                std::string fingerprint = d_.first;
                auto& fingerprint_data = d_.second;

                // data in current interval range
                std::map<double, int>::iterator low = fingerprint_data.lower_bound(current_period_ts);

                while (low != fingerprint_data.end()){
                    // pass current range    
                    if(low->first > next_period_ts || current_period_ts + interval_cnt * sample_interval > next_period_ts){
                        break;
                    }
                    // in range 
                    if(current_period_ts + interval_cnt * sample_interval <= low->first && 
                       low->first < current_period_ts + (interval_cnt + 1) * sample_interval) {
                        interval_sum += low->second;
                        total_sample_num += 1;
                        low ++ ;
                    } else {
                        // new interval range start
                        new_feature[interval_cnt] = interval_sum;
                        interval_sum = 0;
                        interval_cnt ++ ;
                    }
                }

                // record all the feature
                if(raw_features_.find(fingerprint) == raw_features_.end()){
                    raw_features_[fingerprint] = new_feature;
                } else {
                    raw_features_[fingerprint].insert(raw_features_[fingerprint].end(), new_feature.begin(), new_feature.end());
                }

                if(total_sample_num != 0){
                    // add new template to current cluster
                    cluster.AddFeature(fingerprint, new_feature);
                    cluster.UpdateCluster();
                }
            }
        }
        
        return cluster;
    }

    /**
     * @brief Get the Top Coverage object
     * 
     * @param top_cluster_num 
     * @param clusters 
     * @return std::vector<Cluster*> 
     */
    std::vector<Cluster*> getTopCoverage(size_t top_cluster_num, const QueryClusterer& clusters){

        auto clusters_ = clusters.GetClusters();
        std::vector<Cluster*> top_k;

        for(auto iter: clusters_){
            top_k.push_back(iter);
        }

        sort(top_k.begin(), top_k.end(), [](const Cluster* a, const Cluster* b){
            return a->GetFrequency() > b->GetFrequency();
        });

        while(top_k.size() > top_cluster_num){
            top_k.pop_back();
        }

        return top_k;
    }


    peloton::matrix_eig GetWorkload(std::vector<Cluster*> top_k_clusters, 
                                    std::map<std::string, std::vector<double>>& raw_features_, 
                                    size_t num_samples, size_t num_feats) {
        peloton::matrix_eig data;
        char prompt[50] = {0};

        num_samples = raw_features_.begin()->second.size();
        num_feats = top_k_clusters.size();

        data = peloton::matrix_eig::Zero(num_samples, num_feats);

        for(size_t i = 0 ; i < num_feats; i ++ ){
            // 
            const std::set<std::string>& templates = top_k_clusters[i]->GetTemplates();
            for(auto elem: templates){
                // 
                std::string cur_elem_ = elem;
                auto cur_template_features = raw_features_[cur_elem_];
                for(size_t j = 0 ; j < cur_template_features.size(); j ++ ){
                    data(j, i) += cur_template_features[j];
                }
            }
        }

        std::ofstream ofs("/home/zqs/project/workload_predict/data/getWorkLoad.xls", std::ios::trunc);
        for(int i = 0 ; i < num_samples; i ++ ){
            for(int j = 0; j < num_feats; j ++ ){
                ofs << data(i, j) << "\t";
            }
            ofs << "\n";
        }
        ofs.close();
        

        /****/
        peloton::matrix_eig data_s;
        data_s = peloton::matrix_eig::Zero(num_samples, raw_features_.size());
        int col_cnt = 0;
        for(auto iter: raw_features_){
            auto name = iter.first;
            auto v = iter.second;

            for(int i = 0; i < v.size(); i ++ ){
                data_s(i, col_cnt) = v[i];
            }
            col_cnt ++;
        }
        std::ofstream ofs_s_("/home/zqs/project/workload_predict/data/getWorkLoad_plus.xls", std::ios::trunc);
        for(int i = 0 ; i < num_samples; i ++ ){
            for(int j = 0; j < col_cnt; j ++ ){
                ofs_s_ << data_s(i, j) << "\t";
            }
            ofs_s_ << "\n";
        }
        ofs_s_.close();

        ofs.close();
        /****/
        peloton::matrix_eig data_sin;
        data_sin = peloton::matrix_eig::Zero(num_samples, num_feats);

        // Mixed workload of Sine and Cosine waves
        for (size_t i = 0; i < num_feats; i++) {
            data_sin.col(i).setLinSpaced(num_samples, num_samples * i,
                                    num_samples * (i + 1) - 1);
            if (i % 2 == 0) {
            data_sin.col(i) = data_sin.col(i).array().sin();
            } else {
            data_sin.col(i) = data_sin.col(i).array().cos();
            }
        }
        std::ofstream ofs_sin("/home/zqs/project/workload_predict/data/getWorkLoad_sin.xls", std::ios::trunc);
        for(int i = 0 ; i < num_samples; i ++ ){
            for(int j = 0; j < num_feats; j ++ ){
                ofs_sin << data_sin(i, j) << "\t";
            }
            ofs_sin << "\n";
        }
        ofs_sin.close();


        sprintf(prompt, "Generating a Sinusoidal workload of dims: %ld x %ld", num_samples, num_feats);
        LOG(INFO) << prompt;
        
        return data;
    }

    /**
     * @brief 
     * 
     * @param model 
     * @param w 
     * @param val_interval 
     * @param num_samples 
     * @param num_feats 
     * @param val_split 
     * @param normalize 
     * @param val_loss_thresh 
     * @param early_stop_patience 
     * @param early_stop_delta 
     */
    void WorkloadTest(
            const QueryClusterer& cluster_, std::vector<Cluster*> top_k_clusters, 
            std::map<std::string, std::vector<double>>& raw_features_,
            peloton::brain::BaseForecastModel &model, size_t val_interval,
            size_t num_samples, size_t num_feats, float val_split, bool normalize,
            float val_loss_thresh, size_t early_stop_patience, float early_stop_delta) {

        // size_t val_interval = 20; 
        // size_t num_samples = 1000;
        // size_t num_feats = 3;
        // float val_split = 0.5;
        // bool normalize = false;
        // float val_loss_thresh = 0.05;
        

        LOG(INFO) << "Using Model: " << (model.ToString().data());

        peloton::matrix_eig data = GetWorkload(top_k_clusters, raw_features_, num_samples, num_feats);
        std::cout << data << std::endl;
        peloton::brain::Normalizer n(normalize);
        val_interval = std::min<size_t>(val_interval, model.GetEpochs());

        // Determine the split point
        size_t split_point =
            data.rows() - static_cast<size_t>(data.rows() * val_split);

        // Split into train/test data
        peloton::matrix_eig train_data = data.topRows(split_point);
        n.Fit(train_data);
        train_data = n.Transform(train_data);

        // test_data for validate
        peloton::matrix_eig test_data = 
            n.Transform(data.bottomRows(
                static_cast<size_t>(data.rows() - split_point)));

        vector_eig train_loss_avg = vector_eig::Zero(val_interval);
        float prev_train_loss = std::numeric_limits<float>::max();
        float val_loss = val_loss_thresh * 2;
        std::vector<float> val_losses;
        for (int epoch = 1; epoch <= model.GetEpochs() &&
                            !brain::ModelUtil::EarlyStop(
                                val_losses, early_stop_patience, early_stop_delta);
            epoch++) {
            auto train_loss = model.TrainEpoch(train_data);
            size_t idx = (epoch - 1) % val_interval;
            train_loss_avg(idx) = train_loss;
            if (epoch % val_interval == 0) {
                val_loss = model.ValidateEpoch(test_data);
                train_loss = train_loss_avg.mean();
                // Below check is not advisable - one off failure chance
                // EXPECT_LE(val_loss, prev_valid_loss);
                // An average on the other hand should surely pass
                DCHECK(train_loss < prev_train_loss);
                LOG(INFO) << "Train Loss: " << train_loss <<", Valid Loss: " << val_loss;
                prev_train_loss = train_loss;
            }
        }
        DCHECK(val_loss < val_loss_thresh);
    }

}
}

int main(int argc, char *argv[]){

    google::InitGoogleLogging(argv[0]);
    google::InstallFailureSignalHandler(); 
    google::ParseCommandLineFlags(&argc, &argv, true);

    peloton::brain::workload_data data;

    double cur_timestamp = 0;
    double last_timestamp = 120;
    peloton::brain::get_workload_classified(cur_timestamp, last_timestamp, data);
    
    double period_duration = 40;
    double sample_interval = 0.25;
    const size_t top_cluster_num = 3;

    std::map<std::string, std::vector<double>> raw_features_;

    peloton::brain::QueryClusterer cluster =  peloton::brain::onlineClustering(raw_features_, cur_timestamp, last_timestamp, 
                                                                               period_duration , sample_interval, data);
    
    
    std::vector<peloton::brain::Cluster*> top_k = peloton::brain::getTopCoverage(top_cluster_num, cluster);


    auto model = std::unique_ptr<peloton::brain::TimeSeriesLSTM>(new peloton::brain::TimeSeriesLSTM(
      peloton::brain::LSTMWorkloadDefaults::NFEATS,
      peloton::brain::LSTMWorkloadDefaults::NENCODED, peloton::brain::LSTMWorkloadDefaults::NHID,
      peloton::brain::LSTMWorkloadDefaults::NLAYERS, peloton::brain::LSTMWorkloadDefaults::LR,
      peloton::brain::LSTMWorkloadDefaults::DROPOUT_RATE,
      peloton::brain::LSTMWorkloadDefaults::CLIP_NORM,
      peloton::brain::LSTMWorkloadDefaults::BATCH_SIZE,
      peloton::brain::LSTMWorkloadDefaults::BPTT,      // batch-selection interval
      peloton::brain::CommonWorkloadDefaults::HORIZON, // predict after
      peloton::brain::CommonWorkloadDefaults::INTERVAL, // validate interval
      peloton::brain::LSTMWorkloadDefaults::EPOCHS));
    DCHECK(model->IsTFModel() == true);
    size_t LOG_INTERVAL = 20;
    size_t NUM_SAMPLES = 1000;
    size_t NUM_FEATS = 3;
    float VAL_SPLIT = 0.5;
    bool NORMALIZE = false;
    float VAL_THESH = 0.05;

    peloton::brain::WorkloadTest(cluster, top_k, raw_features_, *model, 
                                LOG_INTERVAL, NUM_SAMPLES, NUM_FEATS,
                                VAL_SPLIT, NORMALIZE, VAL_THESH,
                                peloton::brain::CommonWorkloadDefaults::ESTOP_PATIENCE,
                                peloton::brain::CommonWorkloadDefaults::ESTOP_DELTA);
    

    return 0;
}