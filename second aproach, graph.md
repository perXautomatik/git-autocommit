treat json as a table in a graph database.

benefits:

retrive relational information from each datanode.
  this commes as relevant if you want to map between multilvled nestings, 
  that is.
  
  if you exctract the data from a nested set. you will be able to rebuild the initial set from it's complexion description but each data
  row will be completely unaware of it's neigbouring values, except with some regard to the positionflag. 
  
  
  cons:
  * no simplification regarding reability
    a graph aproach doesn't simplyfy how you overview a structure.
  