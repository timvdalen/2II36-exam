##Search Engines Questions

### 1. Describe the basic SE architecture, including both indexing and querying. (handouts + any other source you find useful)

Indexing: ![indexing](http://img.ctrlv.in/img/15/01/17/54ba70cb85d33.png)
Querying: ![querying](http://img.ctrlv.in/img/15/01/17/54ba7117671ed.png)

### 2. Describe the basic crawler architecture and indicate what kind of challenges need to be addressed. (handouts + more details http://nlp.stanford.edu/IR-book/pdf/20crawl.pdf).

![](http://img.ctrlv.in/img/15/01/17/54ba7180e1917.png)

![](http://img.ctrlv.in/img/15/01/17/54ba72991dc35.png)

* Waiting -> Multithreaded
* Flooding servers -> Politeness

### 3. Discuss key performance indicators of a search engine as a whole or its particular components (e.g. accuracy, freshness, coverage, novelty, efficiency, scalability).

* accuracy
* freshness
* coverage
* novelty
* efficiency
* scalability

These are pretty obvious...

### 4. Discuss/give examples of typical trade-offs that should be considered while designing a web crawler.

![](http://img.ctrlv.in/img/15/01/17/54ba746a11eff.png)

### 5. Discuss 5 different challenges for a web crawler and explain how you can address them, e.g. spider traps, deep web, “page not found” pages and alike.

* Infeasable with one machine -> Distributed
* Latency/bandwidth differences -> Remember how fast servers respond
* Webmasters preferences -> robots.txt
* Mirrors -> Don't index duplicate pages
* Spam -> Detect and disregard
* Traps -> Try to escape

### 6. Provide your categorization of different kinds of search engines (define dimensions along which different types can be compared).
### 7. Provide your categorization of different kinds of web crawlers (define dimensions along which different types can be compared). 
### 8. Describe the Mercator scheme for implementing web crawlers. Why is it designed this way?

![](http://img.ctrlv.in/img/15/01/17/54ba736065b93.png)

TODO

### 9. Describe meta-crawling/meta search engines (the main motivation, necessity, feasibility, key challenges, risks etc.)
### 10. Give examples of application requirements impacting the queuing policy of a crawler.
### 11. Consider the main challenges (in your opinion) of developing a universal SE (given a query, your SE should output relevant docs, multimedia, maps, news, blogs, etc).

* Storing different types of data in one system
* Developing different kinds of crawlers
* Making sure the right crawler is used for a certain page
* Normalizing different types of data for indexing
* Comparing different types of data for ranking
