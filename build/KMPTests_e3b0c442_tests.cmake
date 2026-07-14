add_test([=[KMPTest.FindsSingleMatch]=]  D:/projects/Crawler/build/KMPTests.exe [==[--gtest_filter=KMPTest.FindsSingleMatch]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[KMPTest.FindsSingleMatch]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\KMP_testing.cpp:5]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[KMPTest.FindsMultipleMatches]=]  D:/projects/Crawler/build/KMPTests.exe [==[--gtest_filter=KMPTest.FindsMultipleMatches]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[KMPTest.FindsMultipleMatches]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\KMP_testing.cpp:9]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[KMPTest.FindsOverlappingMatches]=]  D:/projects/Crawler/build/KMPTests.exe [==[--gtest_filter=KMPTest.FindsOverlappingMatches]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[KMPTest.FindsOverlappingMatches]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\KMP_testing.cpp:13]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[KMPTest.FindsPatternAtBeginning]=]  D:/projects/Crawler/build/KMPTests.exe [==[--gtest_filter=KMPTest.FindsPatternAtBeginning]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[KMPTest.FindsPatternAtBeginning]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\KMP_testing.cpp:17]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[KMPTest.FindsPatternAtEnd]=]  D:/projects/Crawler/build/KMPTests.exe [==[--gtest_filter=KMPTest.FindsPatternAtEnd]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[KMPTest.FindsPatternAtEnd]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\KMP_testing.cpp:21]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[KMPTest.ReturnsEmptyWhenPatternNotFound]=]  D:/projects/Crawler/build/KMPTests.exe [==[--gtest_filter=KMPTest.ReturnsEmptyWhenPatternNotFound]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[KMPTest.ReturnsEmptyWhenPatternNotFound]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\KMP_testing.cpp:25]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[KMPTest.ReturnsEmptyForEmptyText]=]  D:/projects/Crawler/build/KMPTests.exe [==[--gtest_filter=KMPTest.ReturnsEmptyForEmptyText]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[KMPTest.ReturnsEmptyForEmptyText]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\KMP_testing.cpp:29]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[KMPTest.ReturnsEmptyForEmptyPattern]=]  D:/projects/Crawler/build/KMPTests.exe [==[--gtest_filter=KMPTest.ReturnsEmptyForEmptyPattern]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[KMPTest.ReturnsEmptyForEmptyPattern]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\KMP_testing.cpp:33]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[KMPTest.ReturnsEmptyWhenBothAreEmpty]=]  D:/projects/Crawler/build/KMPTests.exe [==[--gtest_filter=KMPTest.ReturnsEmptyWhenBothAreEmpty]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[KMPTest.ReturnsEmptyWhenBothAreEmpty]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\KMP_testing.cpp:37]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[KMPTest.FindsPatternEqualToText]=]  D:/projects/Crawler/build/KMPTests.exe [==[--gtest_filter=KMPTest.FindsPatternEqualToText]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[KMPTest.FindsPatternEqualToText]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\KMP_testing.cpp:41]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[KMPTest.ReturnsEmptyWhenPatternLongerThanText]=]  D:/projects/Crawler/build/KMPTests.exe [==[--gtest_filter=KMPTest.ReturnsEmptyWhenPatternLongerThanText]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[KMPTest.ReturnsEmptyWhenPatternLongerThanText]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\KMP_testing.cpp:45]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[KMPTest.IsCaseSensitive]=]  D:/projects/Crawler/build/KMPTests.exe [==[--gtest_filter=KMPTest.IsCaseSensitive]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[KMPTest.IsCaseSensitive]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\KMP_testing.cpp:49]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[KMPTest.FindsSpecialCharacters]=]  D:/projects/Crawler/build/KMPTests.exe [==[--gtest_filter=KMPTest.FindsSpecialCharacters]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[KMPTest.FindsSpecialCharacters]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\KMP_testing.cpp:53]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[KMPTest.FindsMultipleAnchorPatterns]=]  D:/projects/Crawler/build/KMPTests.exe [==[--gtest_filter=KMPTest.FindsMultipleAnchorPatterns]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[KMPTest.FindsMultipleAnchorPatterns]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\KMP_testing.cpp:57]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
set(KMPTests_TESTS [==[KMPTest.FindsSingleMatch]==] [==[KMPTest.FindsMultipleMatches]==] [==[KMPTest.FindsOverlappingMatches]==] [==[KMPTest.FindsPatternAtBeginning]==] [==[KMPTest.FindsPatternAtEnd]==] [==[KMPTest.ReturnsEmptyWhenPatternNotFound]==] [==[KMPTest.ReturnsEmptyForEmptyText]==] [==[KMPTest.ReturnsEmptyForEmptyPattern]==] [==[KMPTest.ReturnsEmptyWhenBothAreEmpty]==] [==[KMPTest.FindsPatternEqualToText]==] [==[KMPTest.ReturnsEmptyWhenPatternLongerThanText]==] [==[KMPTest.IsCaseSensitive]==] [==[KMPTest.FindsSpecialCharacters]==] [==[KMPTest.FindsMultipleAnchorPatterns]==])
