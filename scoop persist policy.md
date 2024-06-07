
we should update the scoop install and uninstall behaivior to 
persists repo is a separate repo with a mastbranch

depending of programs currently being installed/uninstalled

alt1: sparse checkout
	masterbranch ,
		make scoop install change the sparse checkout defenition file, and fetch from persist before initial install script
			reverting on failure
			reverting on uninstall
			on installing completely new storing in persist, 
				edit sparse checkout to include new
				commit and push
	
alt2: submodule file
	with branches containing worktrees inside persist folder
	master branch is where all worktrees is present, probably containg submodule entries initially checked out on install

	install  behaivor:
		scoop checks if branch is present localy 
		scoop checks if a branch is present in presist repo online
		if present scoop downloads branch, or activates local
		in a folder by name of the persist, create a worktree to branch
		ad as submodule to masterbranch
		normal install behavior from here
		 			

scoop should commit and push relevant persist on uninstall, could coment that a uninstall is happening
		could fail the uninstall if push is not possible
