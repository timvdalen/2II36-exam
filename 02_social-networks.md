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
The key idea is that this model is based on the small-world effect. 

* Start with a low-dimensional regular lattice
* Rewire:
− Add/remove edges to create shortcuts to join remote parts of the lattice
− For each edge with prob p move the other end to a random vertex

Relevance: Used for modeling network transitivity: Many networks assume some kind of geographical proximity
Limitations: Does not have power-law degree distribution which real graphs have.

### 14. Consider key ideas behind the preferential attachment and the edge-copying models, and discuss their relevance and limitations with respect to the real large-scale networks.

* Preferential attachment
	- The key idea is that this model is based on the power-law. 
	- Add a new node, create m out-links with probability of linking a node ki is proportional to its degree.
	- Limitations: all nodes have equal (constant)  out-degree. One needs a complete knowledge of the network to create the graph.
	- Relevance: Leads to power-law degree distributions, which can be used for simulations.
* Edge-copying models 
	- The key idea is that this model is based on the power-law with communities. 
	- Add a node and choose k the number of edges to add With prob. β select k random vertices and link to them Prob. 1-β edges are copied from a randomly chosen node.
	- Limitations: Has no densification
	- Relevance: Leads to power-law degree distributions with communities, which can be used for simulations.
	
### 15. Consider key ideas behind the community guided attachment and forest-fire models, and discuss their relevance and limitations with respect to the large-scale networks. 

* Community guided attachmeBut, we want to model densification in networks
	- Assume community structure One expects many within group friendships and fewer cross-group ones
- a = 2 - log b (c) 
- a … densification exponent
- b … community tree branching factor
- c … difficulty constant, 1 ≤ c ≤ b
- If c = 1: easy to cross communities
- Then: a=2, quadratic growth of edges – near clique
- If c = b: hard to cross communities, no densification
- Then: a=1, linear growth of edges – constant out-degree
	- Limitations: we do not want to have explicit communities and we want a shrinking diameter.
	- Relevance: Leads to power-law degree distributions with densification and communities , which can be used for simulations.
* Forest Fire Model 
	- The key idea is: How do we meet friends at a party? How do we identify references for our work?
	- p … forward burning probability and r … backward burning probability. The model: Each turn a new node v arrives. Uniformly at random chooses an “ambassador” w
 Flip two geometric coins to determine the number in- and out-links of w to follow (burn). Fire spreads recursively until it dies. Node v links to all burned nodes.
	- Limitations: want to have a model that can generate a realistic graph with realistic growth.
	- Relevance: Forest Fire generates graphs that densify and have shrinking diameter.
	
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