**Date:** June 13
**Duration:** 120 minutes

## Goal

Create the initial design proposal for the web crawler and define a clear architecture for how different crawler components will interact with each other and with future indexer.

## Problem

The initial crawler idea did not have a clearly defined end-to-end workflow. The responsibilities of components such as the **URL Frontier**, **URL Validator**, **URL Normalizer**, **Fetcher**, **HTML Parser**, **Seen Storage**, and **Page Storage** needed to be separated properly.

There was also a risk of processing duplicate URLs if URLs with different formats were inserted directly into Seen Storage or the URL Frontier without normalization.

Another design challenge was handling both traditional static websites and modern JavaScript-rendered websites. A normal HTTP fetching approach would work for static HTML pages but might not provide the final rendered DOM for websites that depend heavily on JavaScript.

## What I Tried

Created the initial web crawler design proposal and divided the crawler into independent components with clearly defined responsibilities.

Designed the URL-processing pipeline so that discovered URLs first pass through the **URL Validator** to reject invalid URLs. Valid URLs are then passed to the **URL Normalizer**, which converts different representations of the same URL into a consistent canonical format.

The normalized URL can then be checked against **Seen Storage** before being added to the **URL Frontier**.

Defined the major crawler components:

* **URL Validator** to verify whether a URL is structurally valid before processing.
* **URL Normalizer** to create a consistent URL format and reduce duplicate crawling.
* **Seen Storage** to track URLs that have already been discovered or processed.
* **URL Frontier** to maintain URLs waiting to be crawled.
* **Fetcher** to retrieve webpage content.
* **HTML Parser** to extract links from fetched HTML.
* **Page Storage** to persist crawled webpage data.

Also reviewed the fetching strategy and decided to use two different approaches:

* **libcurl** for normal static HTML pages.
* **Chrome DevTools Protocol (CDP)** for JavaScript-heavy websites where browser rendering is required to obtain the final DOM.

The design proposal was updated to define the overall processing flow:

```text
Seed URL
    |
    v
URL Validator
    |
    v
URL Normalizer
    |
    v
Seen Storage
    |
    v
URL Frontier
    |
    v
Fetcher
    |
    +---- Static Page --------> libcurl
    |
    +---- JavaScript Page ----> CDP RenderEngine
    |
    v
Page Storage
    |
    v
HTML Parser
    |
    v
Extract New URLs
    |
    v
URL Validator
    |
    v
URL Normalizer
    |
    v
Seen Storage
    |
    v
URL Frontier
```

The proposal was also structured to keep each crawler component independent and modular so that individual modules can be implemented, tested, and improved without tightly coupling the complete crawler.

## Outcome

Completed the initial web crawler design proposal with a clear modular architecture and end-to-end crawling workflow.

The design now defines how URLs move through:

* Validation
* Normalization
* Duplicate detection
* Frontier management
* Page fetching
* Browser rendering
* HTML parsing
* Page storage

The proposal also established a hybrid fetching strategy using **libcurl** and **Chrome DevTools Protocol**, allowing the crawler architecture to support both static and JavaScript-rendered websites.

This design provided a clear implementation roadmap for the project and reduced ambiguity about the responsibility of each component.

It also established the importance of normalizing URLs before duplicate detection, which will help prevent logically identical URLs from being crawled multiple times.
