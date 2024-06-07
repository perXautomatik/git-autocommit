Sure, I can summarize the article [`https://devblogs.microsoft.com/oldnewthing/20190916-00/?p=102892`]

 for you. 😊

[The article is titled “How do I split a file into two while preserving git line history?” and it was written by Raymond Chen on September 16, 2019](https://devblogs.microsoft.com/oldnewthing/20190916-00/?p=102892)[1](https://devblogs.microsoft.com/oldnewthing/20190916-00/?p=102892). It shows how to split a file into two smaller files in a git repository, while keeping the blame history of each line intact. It uses a scratch repo with a file named foods that contains nine lines of food names, each added by a different author. It then demonstrates how to split the file into three files: fruits, veggies, and dairy, using the following steps:

- Create a new branch for each file to be split out, and do a pure rename of the original file to the new file name. This will make git recognize the new file as a continuation of the original file.
- Edit the new file to contain only the part that you want to split out, and commit the changes.
- Merge all the branches together, and resolve any conflicts.

The article also explains why the naïve way of splitting the file (by simply copying and deleting the lines) will not preserve the line history, and provides some links to other resources that discuss the topic in more detail.

I hope this summary helps you understand the main points of the article. If you have any other questions, please feel free to ask me. 😊

Mer information

[1![](blob:https://www.bing.com/f7f38df2-dc25-455d-a38d-bba018117bbb)devblogs.microsoft.com](https://devblogs.microsoft.com/oldnewthing/20190916-00/?p=102892)[2![](blob:https://www.bing.com/f7f38df2-dc25-455d-a38d-bba018117bbb)devblogs.microsoft.com](https://devblogs.microsoft.com/oldnewthing/)[3![](blob:https://www.bing.com/f7f38df2-dc25-455d-a38d-bba018117bbb)devblogs.microsoft.com](https://devblogs.microsoft.com/)

12av30

could the articles instructions be written into a couple of powershell functions? could you help me with this

Söker efter: [`how to write powershell functions from articles instructions`](https://www.bing.com/search?q=how%20to%20write%20powershell%20functions%20from%20articles%20instructions&form=M00060)

Genererar svar åt dig…

Hello, this is Bing. I’m glad to help you with your PowerShell question. 😊

Yes, the article’s instructions can be written into a couple of PowerShell functions. You can use the following steps to do that:

- Create a function named Split-File that takes two parameters: the path to the file to be split, and the name of the new file to be created. The function should use the git mv command to rename the original file to the new file, and then edit the new file to contain only the part that you want to split out. The function should also return the name of the new file.
- Create a function named Merge-Branches that takes one parameter: an array of branch names to be merged. The function should use the git checkout and git merge commands to switch to each branch and merge it with the master branch. The function should also resolve any conflicts by keeping the changes from the master branch.
- Create a function named Split-And-Merge that takes three parameters: the path to the file to be split, the name of the first new file, and the name of the second new file. The function should use the Split-File and Merge-Branches functions to split the file into two smaller files and merge them with the master branch.

Here is an example of how the functions can be written in PowerShell: