due to the superiority of obsidian git
and due to it's capability to sync submodules
we should actually use obsidian as our central hub for all our projects
we should then hardlink the project files if they're needed elsewere

the main obsidian repo should be separated from the hub area though, 
one suggestion to this would be
keep ".obisidian" as a separate repo
then as a subrepo, in workspace folder
we include any repository we work on currently, that is, our standard cloning location.
each folder in the workspace folder is assumed to contain a subrepo, nothing else.
we can probobly save space by using a super repo that we then creates workfolders from
