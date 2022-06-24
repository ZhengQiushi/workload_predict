# CMake generated Testfile for 
# Source directory: /home/zqs/project/workload_predict/test
# Build directory: /home/zqs/project/workload_predict/build/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(augmented_nn_test "/home/zqs/project/workload_predict/build/test/augmented_nn_test" "--gtest_color=yes" "--gtest_output=xml:/home/zqs/project/workload_predict/build/test/augmented_nn_test.xml")
set_tests_properties(augmented_nn_test PROPERTIES  ENVIRONMENT "LSAN_OPTIONS=suppressions=/home/zqs/project/workload_predict/test/leak_suppr.txt")
add_test(eigen_util_test "/home/zqs/project/workload_predict/build/test/eigen_util_test" "--gtest_color=yes" "--gtest_output=xml:/home/zqs/project/workload_predict/build/test/eigen_util_test.xml")
set_tests_properties(eigen_util_test PROPERTIES  ENVIRONMENT "LSAN_OPTIONS=suppressions=/home/zqs/project/workload_predict/test/leak_suppr.txt")
add_test(model_test "/home/zqs/project/workload_predict/build/test/model_test" "--gtest_color=yes" "--gtest_output=xml:/home/zqs/project/workload_predict/build/test/model_test.xml")
set_tests_properties(model_test PROPERTIES  ENVIRONMENT "LSAN_OPTIONS=suppressions=/home/zqs/project/workload_predict/test/leak_suppr.txt")
add_test(model_util_test "/home/zqs/project/workload_predict/build/test/model_util_test" "--gtest_color=yes" "--gtest_output=xml:/home/zqs/project/workload_predict/build/test/model_util_test.xml")
set_tests_properties(model_util_test PROPERTIES  ENVIRONMENT "LSAN_OPTIONS=suppressions=/home/zqs/project/workload_predict/test/leak_suppr.txt")
add_test(query_clusterer_test "/home/zqs/project/workload_predict/build/test/query_clusterer_test" "--gtest_color=yes" "--gtest_output=xml:/home/zqs/project/workload_predict/build/test/query_clusterer_test.xml")
set_tests_properties(query_clusterer_test PROPERTIES  ENVIRONMENT "LSAN_OPTIONS=suppressions=/home/zqs/project/workload_predict/test/leak_suppr.txt")
add_test(query_logger_test "/home/zqs/project/workload_predict/build/test/query_logger_test" "--gtest_color=yes" "--gtest_output=xml:/home/zqs/project/workload_predict/build/test/query_logger_test.xml")
set_tests_properties(query_logger_test PROPERTIES  ENVIRONMENT "LSAN_OPTIONS=suppressions=/home/zqs/project/workload_predict/test/leak_suppr.txt")
add_test(tensorflow_util_test "/home/zqs/project/workload_predict/build/test/tensorflow_util_test" "--gtest_color=yes" "--gtest_output=xml:/home/zqs/project/workload_predict/build/test/tensorflow_util_test.xml")
set_tests_properties(tensorflow_util_test PROPERTIES  ENVIRONMENT "LSAN_OPTIONS=suppressions=/home/zqs/project/workload_predict/test/leak_suppr.txt")
