
we have the foundation in git filter-repo

if the repos to mirror is in the same local repository then we simply run a analyzis, and look for the all path report.

we could of course circle in on specific branches, but feel like a future feature

with a total lists of paths in the repo, both in full paths with filenames, and folder sizes
sorting is a next consideration issue

important that if we do any sort of mapping, we should of course 
first mapp folders against eachother, it's enough to simply group by leaf name

git filter repo accepts renaming lists, that is probably the best way to do large arrays of renamings.

we could eventually highlight the mappings that diverges the most.

-
repo topoligy
 simplest aproach is a single repo, all branches,
 but we might need to implement
	- two repo, and or towards multiple repos
	- towards a single branch
	- multiple branches
because it might not be that different to implement.
it simply alters how much information we asks the analyze function to work over.
-
sorting alterinatives include 
	- root origion (common ansestry)
	- deep to shallow / shallow
	- extream, ignore folder, go straight to file
	- hybrid

the sorting is more or less relevant depending of the repo topoligy, 
for example, if there is no chance for clash in a branch to branch or repo to repo mapping, why would you ever do anything but shallow.


absolutely simplest aproach:
i think the deep to shallow / reverse is probably the only relevant strategy, deep to shallow is the most error resiliant, and shallow is the fastest.


as the deep to shallow will take a more carefull path, picking folders before picking the folders containing this folders etc etc, 
this doesn't make error ressistant, far from it, but it gives a little bit granularity when error do occure
the absolutely most resistant is of course the extreme aproach


the absolute most error safe aproach is to extract the relevant branch in case of single repo into a external temporary repo, then run the analysis on only that branch, the folder statistics extracted from this will then be somewhat predicable wether it can cause a error or not.
this due to you see clearly that if file somewhere in the history of the branch has resided in the path you are about to asign it to, there is a non zero chanse there might be a clash,

you could then have a hybrid aproach regarding order, you could use a shallow aproach on paths that does not contain possible conflicts, and then use a extream aproach on the paths that's non zero, then you are guranteed to get absolutely maximum speed on safe paths, and maximum granularity on unsafe paths, 

-
error predictionn : unsafe paths or nonzero cfc


initial analyzis, regardless of topoligy ;quasicode

full paths ->
 l1 ->
	group by leaf
		? c = 1 ->
			assume safe
		? c != 1
			possible clash
->append as column to list -> fp1

repeat for folders 
-> append as column to list ->f1

join fp1,f1
	on fp1 begin with f1
group by fp1 
	select longest f1




-

we could implement a error response, atleast on the folder mapping phase, that case of foldermapping error, 
response should be apropriate to sort order of the renaming order,
case if folder  extract file name clash, and simply extracting surronding paths, hopefully the  
