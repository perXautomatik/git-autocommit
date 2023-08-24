for each record with conflict.
  for each esp, count nr of (U)EOI ( L AND W) store in hashmap
 
 aim:
  BADD = TOCLEAN*EOIL
  GOD = MIN(TOCLEAN*EOIL) 
    if TOCLEAN is 0 the ressult is zero and therefore good
    if EOIL is 0 ressult is zero and therefore good.

initial
  for each REC
    assess BADD

AssessAffectedCluster:
  starting from REC with highest BADD
    for each EOIL in REC -- post nr
      get esp -- post nr
        for each esp get REC affected by esp
          store as AffectedCluster
     
sortAffectedCluster

for each rec, asses BADD changing iteration possibilities
  --that is, which action will ressult in lower or higher BADD
  
appling on example

  r1
    Badd.unchanged if r1.x(3) > r1.x(6)
    Badd.unchanged if r1.x(4) > r1.x(6)
    BADD+ If r1.x(2) > r1.x(6)
    BADD+ if r1.x(5) > r1.x(6)
  r2
    BADD- if r2.x(4) > r2.x(5)
  r3
    BADD- if r3.x(2) > r3.x(4)

   vizualised example:
    a,  b,  c,  d,  e,  f
    12, 51, 210,230,244,255
    

  if there is a subset who follow each rule
    return subset, set bad 0
  else
    for each BADD-
      apply to set, unless badd+ is raised
  return subset, update badd, set flagg altered.
  
  
  
  
summary
sort set until all mutations tested, or change to GOD won't be achivable.
  the second caveat is to save preforemance and hopefully stop infinite loops.
  
  

 
 