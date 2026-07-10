#ifndef FETCHRESULT_H
#define FETCHRESULT_H

#include <string>

struct FetchResult {
  std::string requestedURL;
  std::string finalURL;

  std::string html;

  std::string contentType;

  long statusCode;

  bool success;

  std::string errorMessage;

  FetchResult() : statusCode(0), success(false) {}
};

#endif