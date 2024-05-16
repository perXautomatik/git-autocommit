---
created: 2022-08-15T09:38:41+02:00
modified: 2022-08-15T10:07:05+02:00
---

Split json

Creat shallow. $shallow

For each node in file.bookmarks 

$shallow.bookmarks.children = node.children | ?{Length != 0 } and node.title != Null
{
Set-content | convert to json
        If no folder exists of name file, create folder.
File/node.title
}


Create file x = shallow

For each subfolder in folder, by name. X

Each file y
     $filecontent = get-content | convert from json | 
     X.bookmarks.children[y] = filecontent

Each folder q
X.bookmarks[q] = {title:q children []}
Recurse

If folder contain no child file recurse.



A folder = {title:q children []}
A file = name:itterator , content = {title:, url:content}



-----------+

Create shallow with name FolderX
FolderX as parent node,
Children += recursion of FolderX

----------

If children > 0 
Recurse
Else create a file, by itterator.


-----++-
Can we utelize the built in itterator?
As in recursion there might be no unified order of objects being passed back and forth.

---------

The goal is not to make the file tree importable, but should only be reconstructable
