## MapReduce

### 29. Explain how HDFS (Hadoop Distributed File System) works and how it ensures that MapReduce jobs keep running when disks fail.

Blocks are stored in data nodes, managed by a name node (with a second on standby).
HDFS replicates every block 3 times, with one copy per data node.
If a data node fails, the name node copies blocks so there are 3 copies again.

### 30. Explain how MapReduce jobs work in general and why they are scalable.

MapReduce jobs work by alternating between two simple constructs:

* A Mapper takes a single item as input and assigns it a key, possibly transforming the data
* A Reducer takes a key and a list of values for that key as input and does some calculations, outputting a new data item

By combining these, a lot of complex problems can be solved using small simple tasks.

MapReduce is easily scaleable because there is no global state and the reducers (which do most of the work) don't use each others data.
Since a different reducer program runs for each key, these reducers can easily be run on different machines.

Of course, someone designing a MapReduce job needs to make sure that the keys are well-balanced, or scaling up will not help.

### 31. Design a MapReduce job (describe the mappers and reducers) that calculates TF.IDF scores for all the words in a set of documents.
### 32. Design a MapReduce job (describe the mappers and reducers) that calculates the top-20 most frequent Hashtags in a large collection of tweets.

~~~
Map tweet
	foreach hashtag in tweet.hashtags
		emit <hashtag, 1>

Reduce <hashtag, list of 1's>
	emit (hashtag, count)

//This is super un-MapReduce-like.
//Hadoop has some functionality for sorting after a job,
//but I'm sticking with the 'normal syntax' here
Map (hashtag, count)
	emit <1, (hashtag, count)>

Reduce <a, list of hashtags with count>
	sort list by count
	for i = 0, i < 20, i++
		emit list[i]
~~~
