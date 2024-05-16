---
created: 2022-08-12T17:05:39+02:00
modified: 2022-08-12T17:05:39+02:00
---

# Bookmark analysis

In bulk save where order is partly maintained.
Session estimation can be done by observing - with a assumed threshold - when streaks of reoccurring words occured.

A streak is then basically

A,a,b,a = a

A,a b a 
With threshold 1

With threshold of 2
Meaning row number is No larger than three.

Basically each group is selected with a recursive 
Loop,  select any line with row number more than row number but Les than or equal to row number + #treshold


Decide reach, basically, For each word, get line number.

For each line number get line number more than self + threshold.

Creating pairs of lines.

Name, liner. 
To
Name,liner, word.


A list of unique words.

Have to go from each line.

A list of line numbers.


Groupidentifier(iterator, selectorword,word)
No recursive select
Select from name+words, line one. And all it's words.

Recursive select
Select from name+words where word is word or and line number in threshold.



That would stop when first group bin identified, 
But will find all minor groups as well as the longest.

L1: a,b,c,d
L2: c,d
L3: a,d

With Threshold 2 will identify

L1,l2,l3 group a densety 0.6 length 3
L1,l2 group c densety 1 length 2
L1,l2,l3 group d densety 1 length 3

----
A
Select longest, then select densety


We can observe a possible relationship
