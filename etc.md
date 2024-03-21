---
created: 2022-11-03T10:54:58+01:00
modified: 2022-11-03T11:03:28+01:00
---

# Etc

$ref = (insideref) git origin

$gr = Git root (outside of ref)

$relative = PowerShell resolve path - current

Git rm -cached $relative
Git add . ; Git commit -m "removed $relative"

Git submodule add $ref $relative
Git submodule absorbegitdirs
