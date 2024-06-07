list me some sientific papers looking into the necessety or benefits of smoking for people with neurlogical dissorders or executive disfunction

how to modify autostart entryies at 'regkey' to start as adminitrator

sientific papers toutching on the need for suggar for the sake of mainting attentionspan for indeviduals diagnosed with adhd

installing windows onto a hardrive from vhdx image, what is a possible workflow, including deploying and testing said windows enviroment in for example hyper-visor, and is it possible to set hardware specifications for said image to test driver avialability or similar

is there any simple portable free programs that can help you organize and list avialable hardware nodes on a local network, with for example custom icons for each hardware items, descriptions of each items, relational graphs etc.

is substac a free service, what is the requirements for publishing to substac and is there some possible workflow to publish documents written in obsidian to say substac

git subcommands to make; 
	alias git-unabsorbe - move .git folder back into the repo folder
	alias git-pushChildToParent -  push all branches to parent repo, prefixed with child repo name
	alias git-cd_parent - swich to parrent repo
	alias git-unbranch 
		- uses git filter repo first move content of branch into a subfolder with branch name
		- uses git splise 'branchname' 
			- takes commits from current branch
			- takes commits from param branch
			- if commits from c or p share (provide alternative flaggs) same commit message and commit date, assume messages should be squashed, with the order of p -> c merging strategy "theirs" ressulting in if any conflict would be present, then param branch should be conflict winner, otherwise distrubute other commits of p in the order of c's commtis by date closeness, maintainging the sequence of p (excluding deamed squashable), use a quick lazy algorithm to trye to order p according to following algorithm
				- example c 
					- sequence,author,date
					- 1,y,x3
					- 2,z,x0.3
					- 3,y,x1
				- example p
					- sequence,author,date
					- 1,q,x1.4
					- 2,q,x0.4
				- ressulting
					- sequence,author,date
					- 1,y,x3
					- 2,z,x0.3
					- 3,q,x1.4
					- 4,y,x1
					- 5,q,x0.4
				sequence is upholed
				date is honored
				author is honored
				algroithm should find the best date matching positioning while still honering order,
				the algorithm should fail case order is not upholdable
				algorithm should estimate date accurezy score and rate possible mutations accordingly
				trying to achive a range from it's possitioning with the smallest delta, above example would have a delta of 2.1, where 3 -> 4 is 0.4 + and 4 -> 5 is + 0.6 2-> 3 is 1.1
				had the insertion instead bin 2,3 with the then neighbouring commits date being 3 and 0.3 the delta would then be 2.8, delta is absolute difference between inserted and neighbouring nodes
				example is made with a non branching sequence in mind, case of multiplie treads to consider regarding branching, simply apply the algorithm on each thread.

with the help of git plumming commands, is it possible to rebuild a branch, with all it's possible merges that is creating a exact copy of the linking diagram, not just pointing a branch head to the same pointer as the copied branch

with git plumming commands, can i create a new object from a file path, recive a sha, then create a new branch and point the new branches head to the newly created object, or do i first need to also create a tree object / commit containing the new object then point the head of the branch to it
nextup, can i then do the same with another file, create a sha, reuse the tree object from previous commit, then link this two commits as if they where commited after eachother.
					
in windows, how do i setup and start using git-fs, mounting a repo or folder, how do i interact with the repository underlying the filesysystem

would it be better to do a sparse checkout from a repository rather than a worktree, if you can make a worktree from a subfolder of a repository

	
	