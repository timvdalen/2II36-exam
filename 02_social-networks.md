## Social networks

### 12. Describe key statistical properties of large-scale networks across various domains. You should cover, but not necessary limit yourself to power-laws, small world, densification and shrinking diameter.

* Power law
	Distribution has a long tail of values that are far above the mean
* Small-world effect
	Six degrees of separation
* Densification
	Networks are denser over time. The number of edges grows faster than the number of nodes
* Shriking diameter
	As the network grows the distances between nodes slowly decrease

### 13. Consider key ideas behind the small-world model, and discuss its consequences, relevance and limitations with respect to the real large-scale networks.
### 14. Consider key ideas behind the preferential attachment and the edge-copying models, and discuss their relevance and limitations with respect to the real large-scale networks.
### 15. Consider key ideas behind the community guided attachment and forest-fire models, and discuss their relevance and limitations with respect to the large-scale networks. 
### 16. How does information/diseases spread through networks? Discuss different diffusion models (e.g., threshold, independent contagion, general contagion).   

Threshold: ![](http://img.ctrlv.in/img/15/01/17/54baa32e4c2a2.png)

Independent contagion: ![](http://img.ctrlv.in/img/15/01/17/54baa35e3eb6b.png)

General contagion: ![](http://img.ctrlv.in/img/15/01/17/54baa40264304.png)

### 17. Explain how you can find the most influential subset of nodes in a network.

Most influential set of size k: the set S of k nodes producing largest expected cascade size f(S) if activated.

(See below for cascade detection)

### 18. Explain how you can best detect cascades in a network. Discuss the rewards you can optimize on versus the costs.

Cascade detection: Given a dynamic process spreading over the network, we want to select a set of nodes (sensors) to detect the process effectively
Select a subset of nodes A that maximize the expected reward ![](http://img.ctrlv.in/img/15/01/17/54baa4fd3b797.png) subject to cost(A) < B.

### 19. Explain a way of measuring the similarity of nodes in homogeneous networks (e.g. SimRank). Consider advantages and disadvantages of the approach, how it can be combined with some other idea(s).

* SimRank: x and y are similar if they are related to similar objects; basic and bipartite cases.
* Advantages: Favor “pure” objects (highly skewed distribution in their inlinks or out-links)
* Disadvantages: Does not distinguish object type and relationship type.
* Combines: Bipartite SimRank: Bipartite domains consist of two types of objects. Then we can look for similarity People are similar if they purchase similar items. Items are similar if they are purchased by similar people.

### 20. Explain a way of measuring the similarity of nodes in heterogeneous networks (e.g. PathSim). Consider advantages and disadvantages of the approach, how it can be combined with some other idea(s).

* PathSim accounts for connectivity of x and y as number of paths between them following meta-path (specified by a user) and for the balance of their visibility; meaning/ interpretation is reflected in a chosen meta-path
* Advantages: Does distinguish object type and relationship type. Let's user define a meta-path which is very useful.
* Disadvantages: The user must be able to write correct meta-paths
* Combines: Can use other similarity measures instead of the meta-paths. 