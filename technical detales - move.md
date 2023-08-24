mirror content from a to b

could be done with mv
but the whole move fails if a single file is unreachable.

we have no real controll.

if we'd use find, and for each file, create folder if missing.
only issues being, bit unsure how to reliably handle path, but but.

use initial path list, use mv, if error; recurse 
that is, 
        mv a b || recurse a b
          where 
            a = ../a and 
            b = ../b
the thing is, how do we make it recursive, we don't know how deep it will need to go, 
though and it will use same parrameters for each step
also, the tree will be branching as we're parsing each lvl of the path, 
meaning we'll have potentially more and more failable paths.

yeah gotta be a recursive call, we don't know how many times we'll need to call for each.

less elegant would obeusly to be to just make a find list and then run over it like an array and 
ignore errors.

recursion is more fun.


given path a
  for each folder and file in path
    mv to b
      || if folder send to &recure as background task
          else print file name error.
       
 when successfull move, return progressbar and or process name.
 
 we will need to make the loop wait untill the processes underneath is done
 the thing is, how do we know that we can continue?
 basicly, the recursive method could print output, and the loop could be said to wait for 
 id according to where it started branching, else it should only forward given messages.
 we might not need to make each loop instance listen to same socket, as we don't want to cause echo 
 from the different lvls, rather, the loop only waits for a specific message in the output statemetn.
 
            
 follow links or not.
        rather treat links changing path as an error and other maybe not.
  
 progressbar would be ideal, but might just overcomplicate the process
            
