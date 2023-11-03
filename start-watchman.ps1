$repoPath = 'C:\Users\CrRoot\AppData\Roaming\Microsoft\Windows\PowerShell'
$autoCommitPath ='C:\Users\CrRoot\.config\git\watchman-autocommit\auto-commit.sh'
watchman -- trigger $repoPath auto-commit '*' -- $autoCommitPath