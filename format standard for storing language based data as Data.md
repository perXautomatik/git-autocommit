format standard for storing language based data as Data and format as separte entites
to promote a new datastorage standard for formated data.

the goal is to define a structural standard to store formating information and provide examples what's the benfit of doing so.

the main difference from formats such as xml is the empazy of capsulation and total separation of the data,
data stored at place a, formating at place b, it's also important to define the formating as more than just a skelleton missing it's filling, 
rather a pattern, algorithm, repalyable by any other data regardless of it's intial intention.

the importans of this is not to force people into rethinking how they store data, but rather a strucutre that can be applied on any already formated 
data and from there generating a relation table.

background:
      programing intendations should be a universally understand process. 
      sure there is taste and langauge flavours, but the endproducts is usually rather similar looking, it's also so that intendation methods 
      depending on regex or similar depend on specific phrases and similar which makes language interchangability limited.
      it's also dificult to visualize how different langugage intendation standards differes.
      reaching a standard how to define intendation - formating as a comprehensive metholegy could be used to break formating out of already written code
      to overview it and to improve readability by correcting any involentary divergensies from what might have bin the initial intention.
      


benefits:
a node like structure, this could simplyfy intendation methods, 
data essens extraction and search indedexing.




we treat text as a collection of geometrical shapes for indexing sake rather than what's actually said 

1. example 
2.
3. the standard Lorem Ipsum passage, used since the 1500s
4.  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
5.
6.  Section 1.10.32 of "de Finibus Bonorum et Malorum", written by Cicero in 45 BC
7.  "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
8.
9.  1914 translation by H. Rackham
10.

is composed by x data components with some sort of semantic value.

1 = tBlock(1)
      ^
2 = nPadding
      ^
3 & 4 = tPadding -> tBlock(2)
      ^
5 = nPadding
      ^
6 & 7 = tPadding -> tBlock(3)
      ^
8 = nPadding     
      ^
9 = tPadding -> tBlock(4)
      ^
10 = nPadding      

we have a range cluster as following 

tBlock(1).nPadding.tPadding.tBlock(2).nPadding.tPadding.tBlock(3).nPadding.tPadding.tBlock(4).npadding      

as regex

$1\n\t$2\n\t$3\n\t$4\n

dokuments geometrical essens is thus

$1 \n
\t $2 \n
\t $3 \n
\t $4 \n

each $x segment should be stored as separate file and refered as a indexed segment in a relational structure, such as sql, sqlite or other format for maximum preformans.

this is to






