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
