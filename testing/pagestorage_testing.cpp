#include "../include/pagestorage.h"
#include <gtest/gtest.h>

TEST(PageStorageTest, CreatesConnection) {
  EXPECT_NO_THROW({ PageStorage storage; });
}

TEST(PageStorageTest, StoresPageSuccessfully) {
  PageStorage storage;

  storage.clear();

  bool result =
      storage.storePage("https://example.com", "<html>Hello</html>", 0);

  EXPECT_TRUE(result);

  EXPECT_TRUE(storage.hasPage("https://example.com"));
}

TEST(PageStorageTest, RetrievesHTML) {
  PageStorage storage;

  storage.clear();

  std::string html = "<html>Testing</html>";

  storage.storePage("https://test.com", html, 1);

  EXPECT_EQ(storage.getPage("https://test.com"), html);
}

TEST(PageStorageTest, UpdatesExistingURL) {
  PageStorage storage;

  storage.clear();

  storage.storePage("https://example.com", "old", 0);

  storage.storePage("https://example.com", "new", 1);

  EXPECT_EQ(storage.getPage("https://example.com"), "new");
}

TEST(PageStorageTest, ReturnsFalseForMissingPage) {
  PageStorage storage;

  storage.clear();

  EXPECT_FALSE(storage.hasPage("https://missing.com"));
}

TEST(PageStorageTest, RemovesPage) {
  PageStorage storage;

  storage.clear();

  storage.storePage("https://delete.com", "html", 0);

  EXPECT_TRUE(storage.removePage("https://delete.com"));

  EXPECT_FALSE(storage.hasPage("https://delete.com"));
}

TEST(PageStorageTest, CountsPages) {
  PageStorage storage;

  storage.clear();

  storage.storePage("https://one.com", "one", 0);

  storage.storePage("https://two.com", "two", 0);

  EXPECT_EQ(storage.pageCount(), 2);
}

TEST(PageStorageTest, ClearsPages) {
  PageStorage storage;

  storage.storePage("https://clear.com", "html", 0);

  storage.clear();

  EXPECT_EQ(storage.pageCount(), 0);
}

// edge cases

TEST(PageStorageEdgeTest, StoresEmptyHTML) {
  PageStorage storage;
  storage.clear();

  EXPECT_TRUE(storage.storePage("https://example.com/empty", "", 0));

  EXPECT_TRUE(storage.hasPage("https://example.com/empty"));
  EXPECT_EQ(storage.getPage("https://example.com/empty"), "");
}

TEST(PageStorageEdgeTest, StoresHTMLWithQuotesAndSpecialCharacters) {
  PageStorage storage;
  storage.clear();

  std::string url = "https://example.com/special";
  std::string html = "<html><body>"
                     "<p>It's a \"special\" page & test</p>"
                     "</body></html>";

  EXPECT_TRUE(storage.storePage(url, html, 1));
  EXPECT_EQ(storage.getPage(url), html);
}

TEST(PageStorageEdgeTest, StoresMultilineHTML) {
  PageStorage storage;
  storage.clear();

  std::string url = "https://example.com/multiline";
  std::string html = "<html>\n"
                     "  <body>\n"
                     "    <h1>Hello</h1>\n"
                     "  </body>\n"
                     "</html>";

  EXPECT_TRUE(storage.storePage(url, html, 2));
  EXPECT_EQ(storage.getPage(url), html);
}

TEST(PageStorageEdgeTest, StoresLargeHTML) {
  PageStorage storage;
  storage.clear();

  std::string url = "https://example.com/large";
  std::string html(1000000, 'A');

  EXPECT_TRUE(storage.storePage(url, html, 1));

  std::string retrieved = storage.getPage(url);

  EXPECT_EQ(retrieved.size(), html.size());
  EXPECT_EQ(retrieved, html);
}

TEST(PageStorageEdgeTest, HandlesURLWithQueryParameters) {
  PageStorage storage;
  storage.clear();

  std::string url = "https://example.com/search?q=crawler&page=1";

  EXPECT_TRUE(storage.storePage(url, "<html>Search</html>", 1));
  EXPECT_TRUE(storage.hasPage(url));
  EXPECT_EQ(storage.getPage(url), "<html>Search</html>");
}

TEST(PageStorageEdgeTest, HandlesURLWithSpecialCharacters) {
  PageStorage storage;
  storage.clear();

  std::string url = "https://example.com/search?name=Vivek%20Singh&x=1";

  EXPECT_TRUE(storage.storePage(url, "<html>Test</html>", 1));
  EXPECT_TRUE(storage.hasPage(url));
}

TEST(PageStorageEdgeTest, RemovingNonExistingPageReturnsFalse) {
  PageStorage storage;
  storage.clear();

  EXPECT_FALSE(storage.removePage("https://example.com/does-not-exist"));
}

TEST(PageStorageEdgeTest, DuplicateURLDoesNotIncreasePageCount) {
  PageStorage storage;
  storage.clear();

  std::string url = "https://example.com/update";

  EXPECT_TRUE(storage.storePage(url, "<html>Version 1</html>", 1));
  EXPECT_EQ(storage.pageCount(), 1);

  EXPECT_TRUE(storage.storePage(url, "<html>Version 2</html>", 2));

  EXPECT_EQ(storage.pageCount(), 1);
  EXPECT_EQ(storage.getPage(url), "<html>Version 2</html>");
}

TEST(PageStorageEdgeTest, ClearEmptyStorageDoesNotFail) {
  PageStorage storage;

  storage.clear();

  EXPECT_NO_THROW(storage.clear());
  EXPECT_EQ(storage.pageCount(), 0);
}

TEST(PageStorageEdgeTest, StoresHTMLContainingNullByte) {
  PageStorage storage;
  storage.clear();

  std::string url = "https://example.com/binary";

  std::string html = "<html>";
  html.push_back('\0');
  html += "</html>";

  EXPECT_TRUE(storage.storePage(url, html, 1));

  std::string retrieved = storage.getPage(url);

  EXPECT_EQ(retrieved.size(), html.size());
  EXPECT_EQ(retrieved, html);
}