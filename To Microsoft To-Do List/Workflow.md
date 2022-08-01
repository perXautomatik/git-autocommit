Work; utsökninging för kv

datagrip runconfiguration is the head of the project
a gitrepo, with gists as submodules for each process in the task.
a big text can be broken down in a process sequence, each process a separate file.
encapsulation in the sence of no code needed to be read from outside of each process
if we have strigient specifications of what we expect as input, output then indevidual pieces should be interchangable.

we could actually write the configuration template as xml, we write each stepp in the process as filenames expected to execute, we could even make a uml diagram, then find the source for each filename.

absolutely best aproach will be to use

* External queries but external queries is somewhat hard to versioncontrol due to it being a string sent into a vairable, but we could
** write a boilerplate loading the content of a file into the variable rather than hardcoding it. the boilerplate should in it self be able to take variable so that it itself can be reused.
