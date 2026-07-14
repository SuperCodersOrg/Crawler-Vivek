## Date: July 13  
## Duration: 120 minutes  

## Goal: 

Integrate, build, execute, and debug the main Crawler Controller workflow by connecting the major crawler components and verifying that URLs move correctly through the complete crawling pipeline. The main objective was to ensure that the crawler could validate and normalize a seed URL, check it against Seen Storage, insert it into the URL Frontier, fetch the webpage, detect whether browser rendering was required, store the page content, extract new links, and continue crawling according to the configured maximum depth. Another goal was to investigate the apparent infinite loop observed during crawling and test the Chrome DevTools Protocol integration required for JavaScript-rendered websites.

## Problem:

 After integrating the Crawler Controller with the existing crawler components, the project initially failed during the linking stage. The build process reached the executable linking step but terminated with `collect2.exe: error: ld returned 1 exit status` and later `collect2.exe: error: ld returned 5 exit status`. This created uncertainty about whether the problem was caused by missing libraries, incorrect CMake configuration, missing source files, or dependencies required by the RenderEngine.

The generated `linkLibs.rsp` file was inspected to verify the libraries being passed to the linker. The output confirmed that `CollectionsLib`, `ws2_32`, `mariadb`, and `libcurl` were being linked. The complete `CMakeLists.txt` was also reviewed to ensure that all major implementation files, including `renderengine.cpp`, `pagestorage.cpp`, `HTMLparser.cpp`, `seenstorage.cpp`, and `crawler.cpp`, were included in the executable target.

The actual cause of the `ld returned 5 exit status` error was eventually identified as a previously running instance of `Crawler.exe`. Because the executable was still active in another terminal, Windows kept the file locked and the linker was unable to overwrite the existing executable during the rebuild process.

After resolving the build issue, another problem appeared during runtime. The crawler seemed to enter an infinite loop when crawling with a larger maximum depth. The `while (!frontier.isEmpty())` loop continued executing for a long time, and the URL Frontier size continued increasing. It was initially unclear whether the issue was caused by duplicate URLs being repeatedly inserted, the URL Frontier failing to remove processed URLs, the custom Queue implementation not correctly deleting dequeued elements, or the crawler continuously discovering new unique URLs.

Another runtime issue appeared while testing JavaScript-heavy websites. The FrameworkDetector identified some pages as dynamic and transferred execution to the RenderEngine, but the crawling process stopped after `createTab()` returned false. The Chrome DevTools Protocol endpoint at `127.0.0.1:9222` was unreachable because Chrome had not been started with remote debugging enabled.

## What I Tried:

 Reviewed the complete `Crawler::crawl()` integration logic and added detailed debugging statements at important stages of the crawling workflow. Debug messages were added before entering the crawl loop, before and after fetching a page, after framework detection, after page storage, during link extraction, and when processing URLs from the frontier. This made it possible to trace the exact execution path and determine where the crawler was stopping or continuing.

The Seen Storage implementation was inspected to verify duplicate URL handling. The `addSeenURL()` method first checks whether the URL already exists in the internal HashMap and returns false for previously discovered URLs. If the URL is new, it is inserted into Seen Storage and the method returns true. This confirmed that exact duplicate URLs were not being repeatedly inserted into the URL Frontier.

The URL Frontier implementation was then inspected. The `getNextURL()` method delegates to the custom Queue's `dequeue()` operation. The Queue implementation was also reviewed and confirmed to retrieve the front value and call `deleteFront()` before returning the URL node. This verified that processed URLs were actually being removed from the frontier and that the crawl loop was not repeatedly processing the same queue element because of a broken dequeue operation.

Additional debugging output was added to display the currently processed URL, its crawl depth, and the current frontier size. The logs showed that the frontier was not stuck on a single URL. Instead, the crawler was continuously discovering multiple new unique links from each processed webpage. In some cases, one processed page added several new URLs to the frontier, causing the frontier size to grow faster than URLs were being removed. This behavior created the appearance of an infinite loop even though the crawler was still making progress.

The maximum crawl depth was temporarily reduced to `1` for controlled testing. Using `example.com` as the seed URL, the crawler successfully processed the seed page at depth `0`, discovered the IANA example-domain link, processed it at depth `1`, and then terminated when the frontier became empty. This confirmed that the crawler loop, frontier removal, Seen Storage, and maximum-depth logic were functioning correctly.

The crawler was then tested with `maxDepth = 2`. It was confirmed that the maximum depth represents an upper limit rather than a requirement to always reach that depth. If a page does not produce new valid links, the frontier becomes empty and the crawler terminates even if the configured maximum depth has not been reached.

Further debugging was performed around the FrameworkDetector and RenderEngine. Debug messages were added to identify whether a page was classified as static or dynamic and to determine exactly which RenderEngine operation failed. The output showed `Dynamic framework detected` followed by `createTab FAILED`, confirming that the failure occurred while attempting to create a new Chrome DevTools Protocol tab.

The `RenderEngine::createTab()` implementation was reviewed. It creates an HTTP request to the Chrome DevTools Protocol endpoint at `http://127.0.0.1:9222/json/new?<URL>` using libcurl and an HTTP `PUT` request. The returned JSON response is expected to contain a `webSocketDebuggerUrl`, which is then stored for establishing the WebSocket connection.

The CDP server was tested directly by attempting to access `http://127.0.0.1:9222/json/version`. The connection could not be reached, confirming that Chrome was not listening on port `9222`. Chrome was then started with the `--remote-debugging-port=9222` option and a separate debugging user-data directory.

It was also observed that launching Chrome from the terminal without running it in the background occupies that terminal for the lifetime of the Chrome process. To handle this correctly, the workflow was changed to use one terminal for running Chrome with remote debugging enabled and another terminal for building and executing `Crawler.exe`.

Static page crawling was also tested using websites such as `mi.com`. The crawler successfully fetched the page, detected the framework, stored the page in Page Storage, and reached the HTML parsing stage. Debugging output for the number of extracted links was added to help identify cases where the HTML Parser returned zero links.

## Outcome:

 Successfully resolved the build and runtime issues encountered during Crawler Controller integration. The linker failure was traced to a previously running `Crawler.exe` process that prevented Windows from replacing the executable during the build. After terminating the old process, the project built successfully.

Verified that Seen Storage correctly rejects exact duplicate URLs and that the URL Frontier correctly removes processed URLs through the custom Queue `dequeue()` operation. Confirmed that the apparent infinite loop was not caused by a broken queue or duplicate detection logic. Instead, the crawler was experiencing rapid URL Frontier growth because crawled pages were continuously producing multiple new unique URLs, including links to external domains.

Confirmed that the maximum crawl depth mechanism works correctly and that the crawler terminates when the frontier becomes empty. Controlled testing with a smaller maximum depth successfully demonstrated the complete crawl lifecycle from seed URL insertion to frontier exhaustion.

Successfully integrated the main Crawler Controller workflow with URL validation, URL normalization, Seen Storage, URL Frontier, Fetcher, FrameworkDetector, RenderEngine decision logic, Page Storage, and HTML Parser.

Identified the cause of the RenderEngine `createTab()` failure as the Chrome DevTools Protocol server not running on port `9222`. Configured Chrome to run with remote debugging enabled and established a development workflow where Chrome/CDP runs separately from the crawler executable.

The debugging process also identified several improvements required for production-level crawling. These include adding same-domain restrictions to prevent uncontrolled crawling across external websites, introducing a maximum page limit to prevent excessive frontier growth, improving URL filtering and normalization, and completing the full CDP WebSocket connection and rendered HTML extraction workflow.

At the end of the session, the crawler was successfully building and running, static page fetching and storage were working, duplicate detection and frontier removal were verified, crawl depth behavior was confirmed, and the CDP environment was prepared for further testing of JavaScript-rendered websites.