## Date: July 13  
## Duration: 120 minutes  

## Goal:

 Start testing the URL Frontier component and verify that URLs are correctly added, retrieved, and removed during the crawling process.

## Problem:

 The crawler appeared to run continuously, which raised concerns that the URL Frontier might not be removing processed URLs correctly. The frontier size was also increasing during execution, creating the possibility of an infinite loop or an issue in the custom Queue implementation.

## What I Tried: 

Tested the URL Frontier integration with the crawler and reviewed the `getNextURL()` implementation. Checked the custom Queue `dequeue()` method and confirmed that it retrieves the front URL and removes it using `deleteFront()`. Added debug logs to display the currently processed URL, crawl depth, and frontier size. Tested the crawler with smaller maximum depths to observe whether the frontier eventually became empty. Also verified the interaction between URL Frontier and Seen Storage to ensure duplicate URLs were not repeatedly inserted.

## Outcome:

 Confirmed that the URL Frontier and Queue dequeue logic were working correctly. Processed URLs were successfully removed from the frontier. The apparent infinite loop was caused by webpages producing multiple new unique URLs, which made the frontier grow faster than it was being processed. Controlled testing with a smaller maximum crawl depth confirmed that the frontier eventually becomes empty and the crawler terminates successfully. The testing also identified the future need for same-domain restrictions, maximum page limits, and better URL filtering to control frontier growth.