add_test([=[URLFrontierTest.IsEmptyWhenCreated]=]  D:/projects/Crawler/build/URLFrontierTests.exe [==[--gtest_filter=URLFrontierTest.IsEmptyWhenCreated]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLFrontierTest.IsEmptyWhenCreated]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLfrontier_testing.cpp:5]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLFrontierTest.AddsSingleURL]=]  D:/projects/Crawler/build/URLFrontierTests.exe [==[--gtest_filter=URLFrontierTest.AddsSingleURL]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLFrontierTest.AddsSingleURL]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLfrontier_testing.cpp:12]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLFrontierTest.GetsAddedURL]=]  D:/projects/Crawler/build/URLFrontierTests.exe [==[--gtest_filter=URLFrontierTest.GetsAddedURL]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLFrontierTest.GetsAddedURL]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLfrontier_testing.cpp:21]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLFrontierTest.PreservesDepth]=]  D:/projects/Crawler/build/URLFrontierTests.exe [==[--gtest_filter=URLFrontierTest.PreservesDepth]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLFrontierTest.PreservesDepth]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLfrontier_testing.cpp:31]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLFrontierTest.PreservesRetryCount]=]  D:/projects/Crawler/build/URLFrontierTests.exe [==[--gtest_filter=URLFrontierTest.PreservesRetryCount]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLFrontierTest.PreservesRetryCount]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLfrontier_testing.cpp:41]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLFrontierTest.MaintainsFIFOOrder]=]  D:/projects/Crawler/build/URLFrontierTests.exe [==[--gtest_filter=URLFrontierTest.MaintainsFIFOOrder]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLFrontierTest.MaintainsFIFOOrder]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLfrontier_testing.cpp:51]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLFrontierTest.GetNextURLRemovesURL]=]  D:/projects/Crawler/build/URLFrontierTests.exe [==[--gtest_filter=URLFrontierTest.GetNextURLRemovesURL]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLFrontierTest.GetNextURLRemovesURL]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLfrontier_testing.cpp:63]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLFrontierTest.PeekReturnsNextURL]=]  D:/projects/Crawler/build/URLFrontierTests.exe [==[--gtest_filter=URLFrontierTest.PeekReturnsNextURL]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLFrontierTest.PeekReturnsNextURL]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLfrontier_testing.cpp:76]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLFrontierTest.PeekDoesNotRemoveURL]=]  D:/projects/Crawler/build/URLFrontierTests.exe [==[--gtest_filter=URLFrontierTest.PeekDoesNotRemoveURL]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLFrontierTest.PeekDoesNotRemoveURL]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLfrontier_testing.cpp:88]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLFrontierTest.ClearRemovesAllURLs]=]  D:/projects/Crawler/build/URLFrontierTests.exe [==[--gtest_filter=URLFrontierTest.ClearRemovesAllURLs]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLFrontierTest.ClearRemovesAllURLs]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLfrontier_testing.cpp:99]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLFrontierTest.CanReuseFrontierAfterClear]=]  D:/projects/Crawler/build/URLFrontierTests.exe [==[--gtest_filter=URLFrontierTest.CanReuseFrontierAfterClear]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLFrontierTest.CanReuseFrontierAfterClear]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLfrontier_testing.cpp:112]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLFrontierTest.GetNextURLFromEmptyFrontierThrowsException]=]  D:/projects/Crawler/build/URLFrontierTests.exe [==[--gtest_filter=URLFrontierTest.GetNextURLFromEmptyFrontierThrowsException]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLFrontierTest.GetNextURLFromEmptyFrontierThrowsException]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLfrontier_testing.cpp:124]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLFrontierTest.PeekFromEmptyFrontierThrowsException]=]  D:/projects/Crawler/build/URLFrontierTests.exe [==[--gtest_filter=URLFrontierTest.PeekFromEmptyFrontierThrowsException]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLFrontierTest.PeekFromEmptyFrontierThrowsException]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLfrontier_testing.cpp:130]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
set(URLFrontierTests_TESTS [==[URLFrontierTest.IsEmptyWhenCreated]==] [==[URLFrontierTest.AddsSingleURL]==] [==[URLFrontierTest.GetsAddedURL]==] [==[URLFrontierTest.PreservesDepth]==] [==[URLFrontierTest.PreservesRetryCount]==] [==[URLFrontierTest.MaintainsFIFOOrder]==] [==[URLFrontierTest.GetNextURLRemovesURL]==] [==[URLFrontierTest.PeekReturnsNextURL]==] [==[URLFrontierTest.PeekDoesNotRemoveURL]==] [==[URLFrontierTest.ClearRemovesAllURLs]==] [==[URLFrontierTest.CanReuseFrontierAfterClear]==] [==[URLFrontierTest.GetNextURLFromEmptyFrontierThrowsException]==] [==[URLFrontierTest.PeekFromEmptyFrontierThrowsException]==])
