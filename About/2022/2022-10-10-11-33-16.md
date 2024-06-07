---
created: 2022-10-10T11:33:16+02:00
modified: 2022-10-10T11:38:57+02:00
---

PowerShell 

 Split history with echo into snipp json files 

Do it like a git rename.

Map head to repo.
   Git diff, then check names 
   Move as overwrites
   Remove copies
   If multiple files with different object hash should resign in same spot, then move overwrite recursivly
A single commit per modification, make sure deleting action is separate from the modification action.
