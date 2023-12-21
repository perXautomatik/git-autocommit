where 
  S = same as source
  l = EOIL
  W = EOIW
  _ = empty
  R = REC 
  X() = esp in specific rec context
  
  R/X 1,2,3,4,5,6
  1   S,_,l,l,_,W   BADD = 0 (toclean = 0, eoil = 2 )
  2   S,_,_,l,_     BADD = 1 (toclean = 1, eoil = 1 )
  3   S,l,_,S       BADD = 1 (toClean = 1, eoil = 1 )
  4   S,_,l,l,l,_   BADD = 3 (toclean = 1, eoil = 3 )
  5   S,_,l,l,l,S   BADD = 3 (toclean = 1, eoil = 3 )
  6   S,_,_,_,_,S   BADD = 0 (toclean = 1, eoil = 0 )