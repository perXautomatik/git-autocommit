---
created: 2022-08-23T14:31:17+02:00
modified: 2022-08-23T14:58:43+02:00
---

# Tree structures for information storage.

The idea is to decide information in atomic packages and distribute the packages according to the tree.

You then refere to the complete data as a path in the tree.


Calling it a tree might be unsuitable as you might want to refer to a set of data as a non straight path, whom reuses same part multiple times.

So a graph. 
And the reference will be a directed path in such graph.

So storage is the process of dividing the information in atomic parts, then building a path instruction for what was inserted.

This should in theory be fast as most data is a mutation of already known data.

The fetching process simply goes to the begining node, then recursivly consumes children according to the path instructions.

In theory, this should be the absolutely smallest form of data storage, we trade immensely small fotprint with pointer densety, the smaller and more unique each segment is, the longer the path is and possibly much larger CPU overhead.

We could optimize this by adding a translation layer on top, which matches all inserted paths according to occurance.

Imagine the information as blocks you store close to each other to have easy access to.

You the tell the hard drive to fetch the cluster the information is stored on and the translator builds from does peaces it can get what on the cluster.

Optimization assumes neighbouring data.
Optimization assumes size of clusters, and in theory we could have similar hirarkies of clusters

Basically, we lower the CPU head with a decent cache,



Underlying structure could be a hash set, storing the atomic values,

Thinking about weather it is needed to assign a path between each refered datapoint, if you do, some points will have extremely large referenser list, while some will have very few.

This could be an optimization question, breaking up very tight nodes into reference nodes, so that it never to many pointers in one place.
That would allow the path to have simpler indexes for each step in the tree.

This reference nodes would be one way paths not containig any information but only referring to which ever node was overcrowded.

It's important that the structures are very proof to removal and addition, and i think that regardless of how large a dataset grow to be, the keys referring to them should be the same, that is, regardless of what messier of optimization, same key leads to same data.


a extream case could be a startingpoint, a alphabet, then as you insert data, each letters reference grows larger, 
such a graph would have keys as long or longer than inserted data.
but could be the start of a optimization effort, probably starting with identifiying most comon references, or even some references that's same all over ingested data.
this references can be replaced with translation shortcuts.
this then need to be replaced in the paths until satesfactory short paths have bin deviced and clusters of efficent size have bin concluded.

the storage should in theory be more efficent the more data is stored in it, as information repeats itself, and kardinality decreses in proportion with number of insertions, out of share probability of big numbers.


we could start of this experiemtn with a node set consisting of a symbols in the ascii symbol table.

then we feed this graph with some arbitary text. most intersting in the beguining would be a list of words, possibly short sentenses, 
each word get in advanced a unique identifier, we then tell the graph, that we want to create a directed path between the nodes named according to the lines identifier, 
this initial graph will not be efficent, it will not be fast, but will create a maximum state for a dataset U on a atmoic graph of Y
and we can use it as reference if we want to go the other way arround.

regardless the maximum state is very interesting out of a optimization point aswell, as it is the absolutely least efficent state, and any improvisation will be notisable.

the reference key should be as short as possible, yeat as unique as possible, and unique even if the graph grows many times in magnitude.
still refering to same data.



