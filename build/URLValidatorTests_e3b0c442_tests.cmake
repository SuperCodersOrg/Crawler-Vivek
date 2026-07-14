add_test([=[URLValidatorTest.AcceptsValidHttpURL]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.AcceptsValidHttpURL]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.AcceptsValidHttpURL]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:6]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.AcceptsValidHttpsURL]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.AcceptsValidHttpsURL]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.AcceptsValidHttpsURL]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:10]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.AcceptsURLWithPath]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.AcceptsURLWithPath]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.AcceptsURLWithPath]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:14]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.AcceptsURLWithSubdomain]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.AcceptsURLWithSubdomain]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.AcceptsURLWithSubdomain]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:18]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.RejectsEmptyURL]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.RejectsEmptyURL]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.RejectsEmptyURL]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:24]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.RejectsURLWithoutProtocol]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.RejectsURLWithoutProtocol]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.RejectsURLWithoutProtocol]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:30]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.RejectsFTPProtocol]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.RejectsFTPProtocol]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.RejectsFTPProtocol]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:34]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.RejectsInvalidProtocol]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.RejectsInvalidProtocol]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.RejectsInvalidProtocol]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:38]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.RejectsHttpWithoutDomain]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.RejectsHttpWithoutDomain]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.RejectsHttpWithoutDomain]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:44]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.RejectsHttpsWithoutDomain]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.RejectsHttpsWithoutDomain]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.RejectsHttpsWithoutDomain]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:48]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.RejectsDomainWithoutDot]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.RejectsDomainWithoutDot]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.RejectsDomainWithoutDot]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:54]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.RejectsDomainContainingSpace]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.RejectsDomainContainingSpace]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.RejectsDomainContainingSpace]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:58]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.RejectsDomainEndingWithDot]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.RejectsDomainEndingWithDot]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.RejectsDomainEndingWithDot]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:62]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.AcceptsURLWithQueryParameters]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.AcceptsURLWithQueryParameters]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.AcceptsURLWithQueryParameters]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:66]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.AcceptsURLWithFragment]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.AcceptsURLWithFragment]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.AcceptsURLWithFragment]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:70]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.AcceptsURLWithPort]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.AcceptsURLWithPort]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.AcceptsURLWithPort]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:74]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.RejectsUppercaseProtocol]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.RejectsUppercaseProtocol]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.RejectsUppercaseProtocol]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:78]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.RejectsProtocolOnlyWithPath]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.RejectsProtocolOnlyWithPath]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.RejectsProtocolOnlyWithPath]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:82]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.RejectsDomainStartingWithDot]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.RejectsDomainStartingWithDot]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.RejectsDomainStartingWithDot]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:86]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.RejectsConsecutiveDots]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.RejectsConsecutiveDots]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.RejectsConsecutiveDots]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:90]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[URLValidatorTest.RejectsWhitespaceURL]=]  D:/projects/Crawler/build/URLValidatorTests.exe [==[--gtest_filter=URLValidatorTest.RejectsWhitespaceURL]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[URLValidatorTest.RejectsWhitespaceURL]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\URLvalidator_testing.cpp:94]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
set(URLValidatorTests_TESTS [==[URLValidatorTest.AcceptsValidHttpURL]==] [==[URLValidatorTest.AcceptsValidHttpsURL]==] [==[URLValidatorTest.AcceptsURLWithPath]==] [==[URLValidatorTest.AcceptsURLWithSubdomain]==] [==[URLValidatorTest.RejectsEmptyURL]==] [==[URLValidatorTest.RejectsURLWithoutProtocol]==] [==[URLValidatorTest.RejectsFTPProtocol]==] [==[URLValidatorTest.RejectsInvalidProtocol]==] [==[URLValidatorTest.RejectsHttpWithoutDomain]==] [==[URLValidatorTest.RejectsHttpsWithoutDomain]==] [==[URLValidatorTest.RejectsDomainWithoutDot]==] [==[URLValidatorTest.RejectsDomainContainingSpace]==] [==[URLValidatorTest.RejectsDomainEndingWithDot]==] [==[URLValidatorTest.AcceptsURLWithQueryParameters]==] [==[URLValidatorTest.AcceptsURLWithFragment]==] [==[URLValidatorTest.AcceptsURLWithPort]==] [==[URLValidatorTest.RejectsUppercaseProtocol]==] [==[URLValidatorTest.RejectsProtocolOnlyWithPath]==] [==[URLValidatorTest.RejectsDomainStartingWithDot]==] [==[URLValidatorTest.RejectsConsecutiveDots]==] [==[URLValidatorTest.RejectsWhitespaceURL]==])
