
$ref = (insideref) git origin

$gr = Git root (outside of ref)

$relative = PowerShell resolve path - current

Git rm -cached $relative
Git add . ; Git commit -m "removed $relative"

Git submodule add $ref $relative
Git submodule absorbegitdirs
