# CMake generated Testfile for 
# Source directory: /Users/lion/project/brain/test
# Build directory: /Users/lion/project/brain/build/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(augmented_nn_test "/Users/lion/project/brain/build/test/augmented_nn_test" "--gtest_color=yes" "--gtest_output=xml:/Users/lion/project/brain/build/test/augmented_nn_test.xml")
set_tests_properties(augmented_nn_test PROPERTIES  ENVIRONMENT "LSAN_OPTIONS=suppressions=/Users/lion/project/brain/test/leak_suppr.txt" _BACKTRACE_TRIPLES "/Users/lion/project/brain/test/CMakeLists.txt;96;add_test;/Users/lion/project/brain/test/CMakeLists.txt;0;")
add_test(eigen_util_test "/Users/lion/project/brain/build/test/eigen_util_test" "--gtest_color=yes" "--gtest_output=xml:/Users/lion/project/brain/build/test/eigen_util_test.xml")
set_tests_properties(eigen_util_test PROPERTIES  ENVIRONMENT "LSAN_OPTIONS=suppressions=/Users/lion/project/brain/test/leak_suppr.txt" _BACKTRACE_TRIPLES "/Users/lion/project/brain/test/CMakeLists.txt;96;add_test;/Users/lion/project/brain/test/CMakeLists.txt;0;")
add_test(model_test "/Users/lion/project/brain/build/test/model_test" "--gtest_color=yes" "--gtest_output=xml:/Users/lion/project/brain/build/test/model_test.xml")
set_tests_properties(model_test PROPERTIES  ENVIRONMENT "LSAN_OPTIONS=suppressions=/Users/lion/project/brain/test/leak_suppr.txt" _BACKTRACE_TRIPLES "/Users/lion/project/brain/test/CMakeLists.txt;96;add_test;/Users/lion/project/brain/test/CMakeLists.txt;0;")
add_test(model_util_test "/Users/lion/project/brain/build/test/model_util_test" "--gtest_color=yes" "--gtest_output=xml:/Users/lion/project/brain/build/test/model_util_test.xml")
set_tests_properties(model_util_test PROPERTIES  ENVIRONMENT "LSAN_OPTIONS=suppressions=/Users/lion/project/brain/test/leak_suppr.txt" _BACKTRACE_TRIPLES "/Users/lion/project/brain/test/CMakeLists.txt;96;add_test;/Users/lion/project/brain/test/CMakeLists.txt;0;")
add_test(query_clusterer_test "/Users/lion/project/brain/build/test/query_clusterer_test" "--gtest_color=yes" "--gtest_output=xml:/Users/lion/project/brain/build/test/query_clusterer_test.xml")
set_tests_properties(query_clusterer_test PROPERTIES  ENVIRONMENT "LSAN_OPTIONS=suppressions=/Users/lion/project/brain/test/leak_suppr.txt" _BACKTRACE_TRIPLES "/Users/lion/project/brain/test/CMakeLists.txt;96;add_test;/Users/lion/project/brain/test/CMakeLists.txt;0;")
add_test(query_logger_test "/Users/lion/project/brain/build/test/query_logger_test" "--gtest_color=yes" "--gtest_output=xml:/Users/lion/project/brain/build/test/query_logger_test.xml")
set_tests_properties(query_logger_test PROPERTIES  ENVIRONMENT "LSAN_OPTIONS=suppressions=/Users/lion/project/brain/test/leak_suppr.txt" _BACKTRACE_TRIPLES "/Users/lion/project/brain/test/CMakeLists.txt;96;add_test;/Users/lion/project/brain/test/CMakeLists.txt;0;")
add_test(tensorflow_util_test "/Users/lion/project/brain/build/test/tensorflow_util_test" "--gtest_color=yes" "--gtest_output=xml:/Users/lion/project/brain/build/test/tensorflow_util_test.xml")
set_tests_properties(tensorflow_util_test PROPERTIES  ENVIRONMENT "LSAN_OPTIONS=suppressions=/Users/lion/project/brain/test/leak_suppr.txt" _BACKTRACE_TRIPLES "/Users/lion/project/brain/test/CMakeLists.txt;96;add_test;/Users/lion/project/brain/test/CMakeLists.txt;0;")
