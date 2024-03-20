---
created: 2022-09-16T10:03:07+02:00
modified: 2022-09-16T10:55:51+02:00
---

Git mega tree-rebuild. 
Minimize amount of orfan line and file additions, assume each addition of line or file was from a known source, rewrite history when acknowledged.

For files in head of path.
If last commit had line or file additions.

Get lines of aditions
      Find in whole git repo occurrence of line
      If lines occured in commit older than source file,
      Append to database occurrence information.

......

Starting from root of branch attached to head. 
       Search occurrence of each files line 
       For each file 
              Start a new branch with found occurrences,
              If one file has heritage from multiple other files
                    Assume a file split occured, recreate by branching from each file, rename to target, then merge together to preserve inheritance.
              
       Onece a files heritage have bin found, rebase source branch onto it.
       Retain the information of which files from which branches 

......

The goal is a hirachy where every file has a more or less close relation to a file containig one line of the most common line, aka a empty line.
This is a synthetic parent, one doe no code in this way, but semanticly speaking, all information is derived from a base statement, then aggregated to infinity.

....
Text closeness matching.

Git does naturally not match changes inside of lines, that means slight changes will creat simingly orphan lines.
Git assumes a deletion and addition has occured, 
We could initially bridge this gaps.

One way could be to reinturpit the source line as a number of lines, then assuming the change.
The only benefit of this would be to preserve the history of the surrounding maintained text, which might be worth the effort.

One could for example breake at first non word char before difference, insert a linebreake, add the diffing word on a new line, as the commit, then continue with the nondifference on a third line.


......

Some semantich smartness wouldn't hurt, for example variable,columns,cte names matters very little for the processes, but might appeare as massive changes.

Same with formating, 
Question is what way we,d like as end result, 

..........
One could discard history only introducing refornating
If the previous information is exact bar the formating then there commits are equal and the "oldest" priority should be maintained.

.....

During rebuild, one might ask the program to adhere to  the ignore file of the head, making sure unessesary information not get included in the new tree.

.....

One might ask the algorithm to squash commits that does not introduce any modification to source code excluding renames and formating.

.....

The algorithm should distinguish lines of equal content bared reformating, basically as alias of the old.

...

The database approach is suitable when attempting to pease together a "oldest" ancestor, as we'd need to make it a recursive efficensy search by each hash.

....

In all, the result should be a fairly small tree, we do assume that the bulk of changes where copies of other known sources and changes back and forth between some reoccurring code.

...

The split diffing line event will simply clone the object into one that has the alteration included but with same commit history.

...

After The algorithm has finished minimizing heretage, then it can start turning the many rooted graph into a straight line,
That means, sorting the nodes per age, then when two nodes is of same commit or same time but not conflicting content, assume them as a concurrent commit.

This will mean that some files in the tree, will occure non branch like from the source, assuming a logarithmic growth in source files as time passes by,
Rather, appearing when suitable to the commit and then moved as nessesary rather than cherry picking same commits multiple times to simulate intent.

....

One might find this counter intuitive, but one should rather consentrate on the commit messages of the timely name changes rather than the creation of the source file.

.....


Imagine 

A :commit 1

A+ :commit 2 

Commit 3 relies on A and not on A+ and should therefore not cherrypick commit 1 but rather imply that commit 2 should have cloned A before changes made and then rename its to A+ allowing commit 3 to rename the clone to appropriate name.

It might be less confusing if each commit that makes additions to a parent file, makes a clone If a future commit will need the Un alterade state.
