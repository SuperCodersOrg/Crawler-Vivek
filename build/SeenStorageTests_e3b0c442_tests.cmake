add_test([=[SeenStorageTest.IsEmptyWhenCreated]=]  D:/projects/Crawler/build/SeenStorageTests.exe [==[--gtest_filter=SeenStorageTest.IsEmptyWhenCreated]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[SeenStorageTest.IsEmptyWhenCreated]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\Seenstorage_testing.cpp:4]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[SeenStorageTest.AddsNewURLSuccessfully]=]  D:/projects/Crawler/build/SeenStorageTests.exe [==[--gtest_filter=SeenStorageTest.AddsNewURLSuccessfully]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[SeenStorageTest.AddsNewURLSuccessfully]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\Seenstorage_testing.cpp:9]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[SeenStorageTest.AddedURLIsSeen]=]  D:/projects/Crawler/build/SeenStorageTests.exe [==[--gtest_filter=SeenStorageTest.AddedURLIsSeen]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[SeenStorageTest.AddedURLIsSeen]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\Seenstorage_testing.cpp:16]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[SeenStorageTest.UnaddedURLIsNotSeen]=]  D:/projects/Crawler/build/SeenStorageTests.exe [==[--gtest_filter=SeenStorageTest.UnaddedURLIsNotSeen]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[SeenStorageTest.UnaddedURLIsNotSeen]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\Seenstorage_testing.cpp:24]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[SeenStorageTest.RejectsDuplicateURL]=]  D:/projects/Crawler/build/SeenStorageTests.exe [==[--gtest_filter=SeenStorageTest.RejectsDuplicateURL]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[SeenStorageTest.RejectsDuplicateURL]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\Seenstorage_testing.cpp:30]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[SeenStorageTest.DuplicateDoesNotIncreaseSize]=]  D:/projects/Crawler/build/SeenStorageTests.exe [==[--gtest_filter=SeenStorageTest.DuplicateDoesNotIncreaseSize]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[SeenStorageTest.DuplicateDoesNotIncreaseSize]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\Seenstorage_testing.cpp:37]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[SeenStorageTest.StoresMultipleUniqueURLs]=]  D:/projects/Crawler/build/SeenStorageTests.exe [==[--gtest_filter=SeenStorageTest.StoresMultipleUniqueURLs]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[SeenStorageTest.StoresMultipleUniqueURLs]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\Seenstorage_testing.cpp:46]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[SeenStorageTest.RemovesExistingURL]=]  D:/projects/Crawler/build/SeenStorageTests.exe [==[--gtest_filter=SeenStorageTest.RemovesExistingURL]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[SeenStorageTest.RemovesExistingURL]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\Seenstorage_testing.cpp:56]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[SeenStorageTest.RemoveDecreasesSize]=]  D:/projects/Crawler/build/SeenStorageTests.exe [==[--gtest_filter=SeenStorageTest.RemoveDecreasesSize]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[SeenStorageTest.RemoveDecreasesSize]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\Seenstorage_testing.cpp:65]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[SeenStorageTest.RemovingNonExistingURLReturnsFalse]=]  D:/projects/Crawler/build/SeenStorageTests.exe [==[--gtest_filter=SeenStorageTest.RemovingNonExistingURLReturnsFalse]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[SeenStorageTest.RemovingNonExistingURLReturnsFalse]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\Seenstorage_testing.cpp:74]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[SeenStorageTest.ClearRemovesAllURLs]=]  D:/projects/Crawler/build/SeenStorageTests.exe [==[--gtest_filter=SeenStorageTest.ClearRemovesAllURLs]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[SeenStorageTest.ClearRemovesAllURLs]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\Seenstorage_testing.cpp:80]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[SeenStorageTest.CanAddURLAgainAfterRemoval]=]  D:/projects/Crawler/build/SeenStorageTests.exe [==[--gtest_filter=SeenStorageTest.CanAddURLAgainAfterRemoval]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[SeenStorageTest.CanAddURLAgainAfterRemoval]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\Seenstorage_testing.cpp:93]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[SeenStorageTest.CanReuseStorageAfterClear]=]  D:/projects/Crawler/build/SeenStorageTests.exe [==[--gtest_filter=SeenStorageTest.CanReuseStorageAfterClear]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[SeenStorageTest.CanReuseStorageAfterClear]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\Seenstorage_testing.cpp:103]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
add_test([=[SeenStorageTest.TreatsDifferentURLStringsAsDifferentURLs]=]  D:/projects/Crawler/build/SeenStorageTests.exe [==[--gtest_filter=SeenStorageTest.TreatsDifferentURLStringsAsDifferentURLs]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[SeenStorageTest.TreatsDifferentURLStringsAsDifferentURLs]=]
  PROPERTIES
    
    DEF_SOURCE_LINE [==[D:\projects\Crawler\testing\Seenstorage_testing.cpp:113]==]
    WORKING_DIRECTORY [==[D:/projects/Crawler/build]==]
    SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==]
    
)
set(SeenStorageTests_TESTS [==[SeenStorageTest.IsEmptyWhenCreated]==] [==[SeenStorageTest.AddsNewURLSuccessfully]==] [==[SeenStorageTest.AddedURLIsSeen]==] [==[SeenStorageTest.UnaddedURLIsNotSeen]==] [==[SeenStorageTest.RejectsDuplicateURL]==] [==[SeenStorageTest.DuplicateDoesNotIncreaseSize]==] [==[SeenStorageTest.StoresMultipleUniqueURLs]==] [==[SeenStorageTest.RemovesExistingURL]==] [==[SeenStorageTest.RemoveDecreasesSize]==] [==[SeenStorageTest.RemovingNonExistingURLReturnsFalse]==] [==[SeenStorageTest.ClearRemovesAllURLs]==] [==[SeenStorageTest.CanAddURLAgainAfterRemoval]==] [==[SeenStorageTest.CanReuseStorageAfterClear]==] [==[SeenStorageTest.TreatsDifferentURLStringsAsDifferentURLs]==])
