---
created: 2022-07-14T16:00:47+02:00
modified: 2022-07-14T16:29:05+02:00
---

[vhds]

Resize-VHD does not remove empty blocks from a dynamically-expanding virtual hard disk file. Use Optimize-VHD instead.
https://docs.microsoft.com/en-us/powershell/module/hyper-v/resize-vhd?view=windowsserver2022-ps


A differencing disk is a virtual hard disk you use to isolate changes to a virtual hard disk or the guest operating system by storing them in a separate file. A differencing disk is similar to the Undo Disks feature because both offer a way to isolate changes in case you want to reverse them. However, Undo Disks is associated with a virtual machine and all disks assigned to it, while a differencing disk is associated only with one disk. In addition, Undo Disks is intended to be a shorter-term method of isolating changes. For more information, see Using Undo Disks. https://docs.microsoft.com/en-us/previous-versions/tn-archive/cc720325(v=ws.10)
