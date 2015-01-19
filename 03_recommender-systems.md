## Recommender Systems

### 21. Describe the difference between different types of recommender systems, such as personalized recommenders, collaborative filtering, content-based recommenders, knowledge-based filtering and hybrid approaches.
*Personalized recommenders
Only uses the personal data of the user. 

*Collaborative filtering
Tell me what is popular among my peers. It uses 'friends' data.

*Content-based recommenders
Show me more of what I liked. Uses other product of the same kind and looks for a product that looks like the products that you liked the best.

*Knowledge based approaches
Tell me what fits me based on my needs. 

*Hybrid approaches
Combination of previous approaches. 

### 22. Describe the pro's and con's of different kind of recommender systems, such as collaborative filtering, content-based recommenders and knowledge-based filtering.
*collaborative filtering
+ Learns market segments, no knowledge engineering effort, serendipity of results
- Cold start for new users and new items, requires some rating feedback

*Content-based recommenders
+ No community required, comparision between items possible
- Content description necessary, cold start for new users, no suprises 

*Knowledge based approaches
+ No cold start, assured quality, Deterministic recommendations, can resemble sales dialogue 
- Requires knowledge engineering effort, static, does not react to short term trends

### 23. Describe how user-based collaborative filtering works, how it makes predictions and discuss whether it is scalable.
Find users that look like you and use their rating for that item to make a prediction for that item.
The basic user-based collaborative filtering is not scalable. 
When you have more than 10 million users, you have to compare their ratings for items with your rating for items.
There are techniques to make it more scalable.

### 23. Describe how item-based collaborative filtering works, how it makes predictions and discuss whether it is scalable.
Find a item that got similar ratings from other users for that item and take your rating for that similar item. 
The difference with user based is that you use your own rating for that item. 
With user-base you use the rating from someone else that rates items like you. 
The basic item-based collaborative filtering is not scalable. 
When you have more than 10 million items, you have to compare the ratings for all items. 
There are techniques to make it more scalable.

### 24. Explain the cold start problem in recommender systems.
How do we recommend new items, if nobody filled in a rating for that item yet. 
How do we suggest items to an user if the user did not filled in any ratings yet.

### 25. Describe how matrix factorization-based collaborative filtering works, how it makes predictions and discuss whether it is scalable.
Rare shit. 

### 26. Explain how you can evaluate recommender systems. Discuss at least precision, recall, and accuracy measures.
Ofcourse there are some measures that are efficient in practice:
Total sales numbers
Promotion of certain items
But when we test a recommender system, we cannot use those data and have to use other properties:
We can aks the testers whether they liked the recommendation. 
There are four options now:
Rec - Use - Option
Pos - Pos - True positive (tp)
Pos - Neg - False positive (fp)
Neg - Pos - False negative (fn)
Neg - Neg - True negative (tn)
Then we can measure recall: tp/(tp+fn) good movies recommended / all good movies
We can measure precision: tp/(tp+fp) good movies  recommend / all recommendations
Accurarcy measures: 
Mean absolute error: 1/total * Sum |Pi - Ri| for i = 0; i<total.  
Root mean squar error: root( 1/total * Sum (|Pi - Ri|)^2 for i = 0; i<total.  )

### 27. Explain the role TF.IDF can play in content-based recommenders.
A simple approach of a content based recommender is to compute the similarity of an unseen item with the user profile based on keyword overlap.
This is exactly what TF-IDF does. It finds keywords in document, but normalizes these.
Standard measure: TF-IDF:
- encodes document as weighted term vector.
- measures how often a term appears.
  Assuming important items appear more often.
  Normalization has to be done in order to take document length into account
- IDF: aims to reduce the weight of terms that appear in all documents. 

  

### 28. Explain the influence of human decision making when designing recommender systems.
People use different techniques to make their choice.
Some of these are: 
* First Satisfying item.
* Elimination by Aspects: 
They start with the most important aspect and eliminate all items that are not satisfying. 
After that they continue with less important aspects till there is one left.
* Reason-based choice
They want to make a decision that they can justify.
There are also different phenomenons that effect their choices.
* Decoy: adding another item to influence the decision. 
* Primacy/Recency: items at the end and beginning get more attention.
* Framing: The way in which difference decision alternatives are presented influences the final decision taken. 
* Priming: If specific decision properties are made more available in the memory, this influences a consumer's item evaluation.
* Defaults: Preset options bias the decision process.
Also different users have different personalities. 
Some look for the solution that fills their basic requirements. 
Other try to find an optimal solution. 
Some want to make a decision as quick as possible.
Some need more guidance and some want to actively search.
This all have influence in the choice of users. 
