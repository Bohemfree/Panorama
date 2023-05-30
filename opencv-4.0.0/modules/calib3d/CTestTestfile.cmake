# CMake generated Testfile for 
# Source directory: C:/Users/yjs/Downloads/opencv-4.0.0/modules/calib3d
# Build directory: C:/Users/yjs/Downloads/opencv-4.0.0/build/modules/calib3d
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(opencv_test_calib3d "C:/Users/yjs/Downloads/opencv-4.0.0/build/bin/Debug/opencv_test_calib3dd.exe" "--gtest_output=xml:opencv_test_calib3d.xml")
  set_tests_properties(opencv_test_calib3d PROPERTIES  LABELS "Main;opencv_calib3d;Accuracy" WORKING_DIRECTORY "C:/Users/yjs/Downloads/opencv-4.0.0/build/test-reports/accuracy" _BACKTRACE_TRIPLES "C:/Users/yjs/Downloads/opencv-4.0.0/cmake/OpenCVUtils.cmake;1465;add_test;C:/Users/yjs/Downloads/opencv-4.0.0/cmake/OpenCVModule.cmake;1267;ocv_add_test_from_target;C:/Users/yjs/Downloads/opencv-4.0.0/cmake/OpenCVModule.cmake;1062;ocv_add_accuracy_tests;C:/Users/yjs/Downloads/opencv-4.0.0/modules/calib3d/CMakeLists.txt;2;ocv_define_module;C:/Users/yjs/Downloads/opencv-4.0.0/modules/calib3d/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(opencv_test_calib3d "C:/Users/yjs/Downloads/opencv-4.0.0/build/bin/Release/opencv_test_calib3d.exe" "--gtest_output=xml:opencv_test_calib3d.xml")
  set_tests_properties(opencv_test_calib3d PROPERTIES  LABELS "Main;opencv_calib3d;Accuracy" WORKING_DIRECTORY "C:/Users/yjs/Downloads/opencv-4.0.0/build/test-reports/accuracy" _BACKTRACE_TRIPLES "C:/Users/yjs/Downloads/opencv-4.0.0/cmake/OpenCVUtils.cmake;1465;add_test;C:/Users/yjs/Downloads/opencv-4.0.0/cmake/OpenCVModule.cmake;1267;ocv_add_test_from_target;C:/Users/yjs/Downloads/opencv-4.0.0/cmake/OpenCVModule.cmake;1062;ocv_add_accuracy_tests;C:/Users/yjs/Downloads/opencv-4.0.0/modules/calib3d/CMakeLists.txt;2;ocv_define_module;C:/Users/yjs/Downloads/opencv-4.0.0/modules/calib3d/CMakeLists.txt;0;")
else()
  add_test(opencv_test_calib3d NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(opencv_perf_calib3d "C:/Users/yjs/Downloads/opencv-4.0.0/build/bin/Debug/opencv_perf_calib3dd.exe" "--gtest_output=xml:opencv_perf_calib3d.xml")
  set_tests_properties(opencv_perf_calib3d PROPERTIES  LABELS "Main;opencv_calib3d;Performance" WORKING_DIRECTORY "C:/Users/yjs/Downloads/opencv-4.0.0/build/test-reports/performance" _BACKTRACE_TRIPLES "C:/Users/yjs/Downloads/opencv-4.0.0/cmake/OpenCVUtils.cmake;1465;add_test;C:/Users/yjs/Downloads/opencv-4.0.0/cmake/OpenCVModule.cmake;1178;ocv_add_test_from_target;C:/Users/yjs/Downloads/opencv-4.0.0/cmake/OpenCVModule.cmake;1063;ocv_add_perf_tests;C:/Users/yjs/Downloads/opencv-4.0.0/modules/calib3d/CMakeLists.txt;2;ocv_define_module;C:/Users/yjs/Downloads/opencv-4.0.0/modules/calib3d/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(opencv_perf_calib3d "C:/Users/yjs/Downloads/opencv-4.0.0/build/bin/Release/opencv_perf_calib3d.exe" "--gtest_output=xml:opencv_perf_calib3d.xml")
  set_tests_properties(opencv_perf_calib3d PROPERTIES  LABELS "Main;opencv_calib3d;Performance" WORKING_DIRECTORY "C:/Users/yjs/Downloads/opencv-4.0.0/build/test-reports/performance" _BACKTRACE_TRIPLES "C:/Users/yjs/Downloads/opencv-4.0.0/cmake/OpenCVUtils.cmake;1465;add_test;C:/Users/yjs/Downloads/opencv-4.0.0/cmake/OpenCVModule.cmake;1178;ocv_add_test_from_target;C:/Users/yjs/Downloads/opencv-4.0.0/cmake/OpenCVModule.cmake;1063;ocv_add_perf_tests;C:/Users/yjs/Downloads/opencv-4.0.0/modules/calib3d/CMakeLists.txt;2;ocv_define_module;C:/Users/yjs/Downloads/opencv-4.0.0/modules/calib3d/CMakeLists.txt;0;")
else()
  add_test(opencv_perf_calib3d NOT_AVAILABLE)
endif()
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(opencv_sanity_calib3d "C:/Users/yjs/Downloads/opencv-4.0.0/build/bin/Debug/opencv_perf_calib3dd.exe" "--gtest_output=xml:opencv_perf_calib3d.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
  set_tests_properties(opencv_sanity_calib3d PROPERTIES  LABELS "Main;opencv_calib3d;Sanity" WORKING_DIRECTORY "C:/Users/yjs/Downloads/opencv-4.0.0/build/test-reports/sanity" _BACKTRACE_TRIPLES "C:/Users/yjs/Downloads/opencv-4.0.0/cmake/OpenCVUtils.cmake;1465;add_test;C:/Users/yjs/Downloads/opencv-4.0.0/cmake/OpenCVModule.cmake;1179;ocv_add_test_from_target;C:/Users/yjs/Downloads/opencv-4.0.0/cmake/OpenCVModule.cmake;1063;ocv_add_perf_tests;C:/Users/yjs/Downloads/opencv-4.0.0/modules/calib3d/CMakeLists.txt;2;ocv_define_module;C:/Users/yjs/Downloads/opencv-4.0.0/modules/calib3d/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(opencv_sanity_calib3d "C:/Users/yjs/Downloads/opencv-4.0.0/build/bin/Release/opencv_perf_calib3d.exe" "--gtest_output=xml:opencv_perf_calib3d.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
  set_tests_properties(opencv_sanity_calib3d PROPERTIES  LABELS "Main;opencv_calib3d;Sanity" WORKING_DIRECTORY "C:/Users/yjs/Downloads/opencv-4.0.0/build/test-reports/sanity" _BACKTRACE_TRIPLES "C:/Users/yjs/Downloads/opencv-4.0.0/cmake/OpenCVUtils.cmake;1465;add_test;C:/Users/yjs/Downloads/opencv-4.0.0/cmake/OpenCVModule.cmake;1179;ocv_add_test_from_target;C:/Users/yjs/Downloads/opencv-4.0.0/cmake/OpenCVModule.cmake;1063;ocv_add_perf_tests;C:/Users/yjs/Downloads/opencv-4.0.0/modules/calib3d/CMakeLists.txt;2;ocv_define_module;C:/Users/yjs/Downloads/opencv-4.0.0/modules/calib3d/CMakeLists.txt;0;")
else()
  add_test(opencv_sanity_calib3d NOT_AVAILABLE)
endif()
