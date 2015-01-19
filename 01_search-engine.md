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
Different search engines are:

* Meta-Search
* Personalized Search
* Document Search
* General Search

TODO : dimension. Is asked on the forum.

### 7. Provide your categorization of different kinds of web crawlers (define dimensions along which different types can be compared). 
* General Web search 
* Vertical Web search
* Focused crawling 
* Web archival & Web mirroring
* Web characterisation 
* Web site analysis

TODO : dimension. Is asked on the forum.

### 8. Describe the Mercator scheme for implementing web crawlers. Why is it designed this way?

![](http://img.ctrlv.in/img/15/01/17/54ba736065b93.png)

It is designed this way to find a balance between politeness and freshness. 

- Front queues manage prioritization
- Back queues enforce politeness

### 9. Describe meta-crawling/meta search engines (the main motivation, necessity, feasibility, key challenges, risks etc.)
The idea behind meta-crawling/meta-search is to combine the results from other search engines to your own search engine.

* Motivation: If you have a lot of results, you can select the best results. 
* Key challenges are:
	- Efficiency. You have to combine the results in real time.
	Near-duplicate removal. You have to remove results that look a lot like each other.
	Ranking. How to rank and combine the results.
	-  Risks:
	Search engines will notice that you use their search engine. 
	They will want money for these queries. 
	Also you do not have much control about the results you give. 
	Other search engines can give bad results and then you cannot give good results.
* Feasibility:
	There is a lot of potential in meta search. 
	Especially in meta searches for a pre-defined area. 
	Then it is easier to rank the results 
* Necessity:
	They are not necessity. 

### 10. Give examples of application requirements impacting the queuing policy of a crawler.
Heuristics for assigning priority

* Refresh rate sampled from previous crawls
* Application-specific (e.g., "crawl news sites more often")

### 11. Consider the main challenges (in your opinion) of developing a universal SE (given a query, your SE should output relevant docs, multimedia, maps, news, blogs, etc).

* Storing different types of data in one system
* Developing different kinds of crawlers
* Making sure the right crawler is used for a certain page
* Normalizing different types of data for indexing
* Comparing different types of data for ranking
