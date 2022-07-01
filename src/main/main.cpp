
#include <iostream>
#include <string>
#include <vector>
#include <set>
#include <fstream>
#include <sstream>

void get_workload_classified(){
	//读文件
	std::ifstream ifs("/home/zqs/project/workload_predict/data/result.xls", std::ios::in);

    std::ofstream ofs("/home/zqs/project/workload_predict/data/result_.xls", std::ios::trunc);
	std::string _line;
    int line = 0;
	while (getline(ifs, _line))
	{
        line ++ ;
        // if(line > 5){
        //     break;
        // }
		//打印整行字符串
		// std::cout << "each line : " << _line << std::endl;
 
		//解析每行的数据
		std::stringstream ss(_line);
		std::string _sub;
		std::vector<std::string> subArray;
 
		//按照逗号分隔
		while (getline(ss, _sub, '\t'))
			subArray.push_back(_sub);
        
		//输出解析后的每行数据
        std::set<int> non_repeated;

		for (size_t i=0; i<subArray.size(); ++i)
		{
            if(line == 1){
                ofs << subArray[i] << "\t";
            } else {
                if(i == 0){
                    ofs << subArray[i] << "\t";
                } else {
                    non_repeated.insert(atoi(subArray[i].data()) / 200000);
                }
            }
			std::cout << subArray[i] << "\t";
		}
        // std::cout << non_repeated.size() << std::endl;
        ofs << "@";
        for(auto iter = non_repeated.begin(); iter != non_repeated.end(); iter ++ ){
            ofs << *iter;
            // std::cout << *iter << std::endl;
        }
        ofs << "\n";

		std::cout << std::endl;
        
	}
    
}



int main(){
    std::cout << "hello world" << std::endl;
    get_workload_classified();
    

    return 0;
}