# NLP Assignment
This is my NLP course's assignments. Maximum of assignment is build from scratch. 

## Assignment-1: Bag of Words Model (BOG)
Implement Bag-of-Words (BoW) model for text document classification
- Consider a text document classification (discussed in the class) problem
- email classification: Spam or not spam
- authorship attribution: Swami Vivekananda, R N Tagore,…
- genre classification: detective, romance, …
You can use publicly available dataset (any language) or you can create your own dataset
Represent documents using BoW model (binary and count)
For classification use the standard classifier - kNN, SVM, Decision tree

## Assignment-2: N-gram model
Implement N-gram language model on Swami Vivekananda’s complete work or on quotes
Consider the following:
1-gram, 2-gram, 3-gram and 4-gram 
Generate some new samples from each model using the strategy we have discussed in the class
For the dataset you can use the following sources:
https://advaitaashrama.org/cw/content.php
https://www.ramakrishnavivekananda.info/vivekananda/complete_works.htm
https://baniorachana.nltr.org/
https://chennaimath.org/the-vedanta-kesari
https://archive.org/details/completeworksofswamivivekananda_ninevolumes/SWAMI%20VIVEKANANDA%20COMPLETE%20WORKS%20%28Vol%201%29/
You can find multiple download options 
https://www.vedanta-pitt.org/wp-content/uploads/2020/05/Complete_Works_of_Swami_Vivekananda_all_volumes.pdf
## Assignment-3: Implimentation of Word2Vec using numpy
Implement Word2Vec word embedding (discussed in the class) on Swami Vivekananda's complete work or on any other corpus. Consider the following:
- Embedding dimensions: 100, 500, 1000 and 5000
- Context window size(both sides: +, -): 2, 3, 4, 5

To evaluate your embedding, use one from the following test dataset:
– WordSim-353: http://alfonseca.org/eng/research/wordsim353.html
– Word-in-Context (WiC): https://pilehvar.github.io/wic/
