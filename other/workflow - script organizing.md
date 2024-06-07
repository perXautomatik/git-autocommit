
clone new fresh copy of script repo

for each filename, 
	create new branch
as a new commit, flatten to root and add a commit message "flattened"

methodically go through 
	each branch with flattened as last commit message = "flattened"

revaluate if the file is a program or a component
	a component is very general purpos and should have a simple file name, 
		if this is the case, then move file to a folder called lib, commit with "component"
	a program should have a descriptive name, for example the flattening name
		if this is the case, then don't move file, commit with "program"

for each branch with message program
	classify if
		script has a function name
		script imports
		script loads files elsewhere from the repo
		script contains functions that can be broken out
		script contains functions that's to specifc to break out
ammend with message accordingly

for each branch with message "to breakout"
	create a file with the functions name in a lib folder and move the function defenition into it
commit for each function moved out, and when last commit is done, commit with "doneBreakout"

for each branch with commit doneBreakout
check list of current branches
if any file 
	located in a lib folder 
		currently in branch with commit message done breakout has same name as a branch, then breakout this file and called it filename + number
then commit this new branch with "toMerge"

reclassify accordingly

