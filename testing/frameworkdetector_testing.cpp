#include <gtest/gtest.h>

#include "../include/frameworkdetector.h"

class FrameworkDetectorTest : public ::testing::Test {
protected:
  FrameworkDetector detector;
};

// --------------------------------------------------
// Next.js Tests
// --------------------------------------------------

TEST_F(FrameworkDetectorTest, DetectsNextJS) {
  FetchResult result;

  result.html = "<html>"
                "<script id=\"__NEXT_DATA__\"></script>"
                "</html>";

  EXPECT_EQ(detector.detect(result), FrameworkType::NEXTJS);
}

TEST_F(FrameworkDetectorTest, DetectsNextJSRoot) {
  FetchResult result;

  result.html = "<div id=\"__next\"></div>";

  EXPECT_EQ(detector.detect(result), FrameworkType::NEXTJS);
}

// --------------------------------------------------
// React Tests
// --------------------------------------------------

TEST_F(FrameworkDetectorTest, DetectsReactRoot) {
  FetchResult result;

  result.html = "<div id=\"root\"></div>";

  EXPECT_EQ(detector.detect(result), FrameworkType::REACT);
}

TEST_F(FrameworkDetectorTest, DetectsReactKeyword) {
  FetchResult result;

  result.html = "<script src=\"react.js\"></script>";

  EXPECT_EQ(detector.detect(result), FrameworkType::REACT);
}

// --------------------------------------------------
// Angular Tests
// --------------------------------------------------

TEST_F(FrameworkDetectorTest, DetectsAngularVersion) {
  FetchResult result;

  result.html = "<html ng-version=\"17.0\"></html>";

  EXPECT_EQ(detector.detect(result), FrameworkType::ANGULAR);
}

TEST_F(FrameworkDetectorTest, DetectsAngularApp) {
  FetchResult result;

  result.html = "<body ng-app=\"myApp\"></body>";

  EXPECT_EQ(detector.detect(result), FrameworkType::ANGULAR);
}

// --------------------------------------------------
// Vue Tests
// --------------------------------------------------

TEST_F(FrameworkDetectorTest, DetectsVue) {
  FetchResult result;

  result.html = "<div id=\"app\"></div>";

  EXPECT_EQ(detector.detect(result), FrameworkType::VUE);
}

// --------------------------------------------------
// Heavy JavaScript Test
// --------------------------------------------------

TEST_F(FrameworkDetectorTest, DetectsHeavyJavascript) {
  FetchResult result;

  result.html = "<script></script>"
                "<script></script>"
                "<script></script>"
                "<script></script>"
                "<script></script>"
                "<script></script>"
                "<script></script>"
                "<script></script>"
                "<script></script>"
                "<script></script>";

  EXPECT_EQ(detector.detect(result), FrameworkType::UNKNOWN);
}

// --------------------------------------------------
// Static HTML Test
// --------------------------------------------------

TEST_F(FrameworkDetectorTest, DetectsStaticHTML) {
  FetchResult result;

  result.html = "<html>"
                "<body>"
                "<h1>Hello World</h1>"
                "</body>"
                "</html>";

  EXPECT_EQ(detector.detect(result), FrameworkType::STATIC_HTML);
}

// --------------------------------------------------
// Empty HTML Test
// --------------------------------------------------

TEST_F(FrameworkDetectorTest, HandlesEmptyHTML) {
  FetchResult result;

  result.html = "";

  EXPECT_EQ(detector.detect(result), FrameworkType::STATIC_HTML);
}

// --------------------------------------------------
// Priority Test
// --------------------------------------------------

TEST_F(FrameworkDetectorTest, NextJSTakesPriorityOverReact) {
  FetchResult result;

  result.html = "<div id=\"root\"></div>"
                "<script id=\"__NEXT_DATA__\"></script>";

  EXPECT_EQ(detector.detect(result), FrameworkType::NEXTJS);
}