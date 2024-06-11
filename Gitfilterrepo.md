---
created: 2024-06-11T12:34:43+02:00
modified: 2024-06-11T13:05:09+02:00
---

# Gitfilterrepo

Could a PowerShell program be devices that ivokes git filter repo analyze on a repo, then gather the content of the renames file and the all paths files

First it prepares the git filter repo path file as if to apply each git rename documented in the analyse.

One rename per line, then makes a git filter repo dry run, and observed the output, if no error then move on to ready to apply.

Could a PowerShell program with a user interface be devices that have a path field, that verifies that the path in the field is a valid git repo, else grey out buttons and print error in text field.

With a text box that is initially empty and greyed out but once analysis is done, present the generated statements for the user to verify, the user may edit this before pushing dry run button, 

Git filter repo is a python program so be very keen of gathering anything looking like a python error as output when calling git filter repo.

In the user interface add a analyze button
In the user interface add a load renames
In the user interface add a force switch
In the user interface add a reference field, allowing empty, a valid git reference, or current.
In the user interface add a load name guesses

On load name guesses, first assume a sequence of namchanges by the rename file, then look for files in the full path file if they can be matched even partly by the rename sequence then suggest this as renames.

On dry run it might return a soft error saying that the statement might cause a conflict, then highlight the statement matching that error in the input box 

If softerror had occured, store it untill closing program
And make sure text box does not use failed libes
