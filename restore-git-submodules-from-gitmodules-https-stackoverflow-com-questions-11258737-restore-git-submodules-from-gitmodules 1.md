---
created: 2022-09-16T09:59:36+02:00
modified: 2022-09-16T10:02:26+02:00
---
<iframe src="https://stackoverflow.com/questions/11258737/restore-git-submodules-from-gitmodules" allow="fullscreen" allowfullscreen="" style="height:100%;width:100%; aspect-ratio: 16 / 9; "></iframe>

# [Restore git submodules from .gitmodules](https://stackoverflow.com/questions/11258737/restore-git-submodules-from-gitmodules)

[Ask Question](https://stackoverflow.com/questions/ask)

Asked 11 years, 8 months ago

Modified [1 year, 6 months ago](https://stackoverflow.com/questions/11258737/restore-git-submodules-from-gitmodules?lastactivity "2022-08-24 18:00:36Z")

Viewed 48k times

102

[](https://stackoverflow.com/posts/11258737/timeline)

I have a folder, which was a git repo. It contains some files and .gitmodules file. Now, when I do `git init` and then `git submodule init`, the latter command output is nothing. How can I help git to see submodules, defined in .gitmodules file without running `git submodule add` by hand again?

Update: this is my .gitmodules file:

```
[submodule "vim-pathogen"]
    path = vim-pathogen
    url = git://github.com/tpope/vim-pathogen.git
[submodule "bundle/python-mode"]
    path = bundle/python-mode
    url = git://github.com/klen/python-mode.git
[submodule "bundle/vim-fugitive"]
    path = bundle/vim-fugitive
    url = git://github.com/tpope/vim-fugitive.git
[submodule "bundle/ctrlp.vim"]
    path = bundle/ctrlp.vim
    url = git://github.com/kien/ctrlp.vim.git
[submodule "bundle/vim-tomorrow-theme"]
    path = bundle/vim-tomorrow-theme
    url = git://github.com/chriskempson/vim-tomorrow-theme.git
```

and here is listing of this dir:

```
drwxr-xr-x  4 evgeniuz 100 4096 июня  29 12:06 .
drwx------ 60 evgeniuz 100 4096 июня  29 11:43 ..
drwxr-xr-x  2 evgeniuz 100 4096 июня  29 10:03 autoload
drwxr-xr-x  7 evgeniuz 100 4096 июня  29 12:13 .git
-rw-r--r--  1 evgeniuz 100  542 июня  29 11:45 .gitmodules
-rw-r--r--  1 evgeniuz 100  243 июня  29 11:18 .vimrc
```

so, definitely, it is in top level. the git directory is not changed, only `git init` is done

- [git](https://stackoverflow.com/questions/tagged/git "show questions tagged 'git'")
- [git-submodules](https://stackoverflow.com/questions/tagged/git-submodules "show questions tagged 'git-submodules'")

[Share](https://stackoverflow.com/q/11258737 "Short permalink to this question")

[Improve this question](https://stackoverflow.com/posts/11258737/edit)

Follow

[edited Jun 29, 2012 at 9:15](https://stackoverflow.com/posts/11258737/revisions "show all edits to this post")

asked Jun 29, 2012 at 8:50

[

![evgeniuz's user avatar](https://www.gravatar.com/avatar/f07759c362949f5f71cd0b3fd2346fe4?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/229151/evgeniuz)

[evgeniuz](https://stackoverflow.com/users/229151/evgeniuz)

2,68966 gold badges3131 silver badges3838 bronze badges

- Are the submodules already present, in the sense that if you change into any submodule directory there are files present, and `git rev-parse --show-toplevel` gives you the submodule rather than "supermodule" directory? 
    
    – [Mark Longair](https://stackoverflow.com/users/223092/mark-longair "454,683 reputation")
    
     Jun 29, 2012 at 9:07
    
- 1
    
    no, submodule dirs are not present. imagine this folder is completely empty with just `.gitmodules` file 
    
    – [evgeniuz](https://stackoverflow.com/users/229151/evgeniuz "2,689 reputation")
    
     Jun 29, 2012 at 9:09
    
- Ah, I see what the problem is - I've updated my answer. 
    
    – [Mark Longair](https://stackoverflow.com/users/223092/mark-longair "454,683 reputation")
    
     Jun 29, 2012 at 9:18
    

[Add a comment](https://stackoverflow.com/questions/11258737/restore-git-submodules-from-gitmodules# "Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.")

## 8 Answers

Sorted by:

                                              Highest score (default)                                                                   Trending (recent votes count more)                                                                   Date modified (newest first)                                                                   Date created (oldest first)                              

132

[](https://stackoverflow.com/posts/11258810/timeline)

`git submodule init` only considers submodules that already are in the index (i.e. "staged") for initialization. I would write a short script that parses `.gitmodules`, and for each `url` and `path` pair runs:

```
git submodule add <url> <path>
```

For example, you could use the following script:

```
#!/bin/sh

set -e

git config -f .gitmodules --get-regexp '^submodule\..*\.path$' |
    while read path_key local_path
    do
        url_key=$(echo $path_key | sed 's/\.path/.url/')
        url=$(git config -f .gitmodules --get "$url_key")
        git submodule add $url $local_path
    done
```

This is based on how the [`git-submodule.sh` script](https://github.com/git/git/blob/a3fbb2350dcd2d843d1d90b663521222aceb25fe/git-submodule.sh#L132) itself parses the `.gitmodules` file.

[Share](https://stackoverflow.com/a/11258810 "Short permalink to this answer")

[Improve this answer](https://stackoverflow.com/posts/11258810/edit)

Follow

[edited Aug 24, 2022 at 18:00](https://stackoverflow.com/posts/11258810/revisions "show all edits to this post")

[

![Cody Guldner's user avatar](https://www.gravatar.com/avatar/0518b2e0413ca4615b071a8bf94c41ed?s=64&d=identicon&r=PG&f=y&so-version=2)

](https://stackoverflow.com/users/1470950/cody-guldner)

[Cody Guldner](https://stackoverflow.com/users/1470950/cody-guldner)

2,87811 gold badge2525 silver badges3636 bronze badges

answered Jun 29, 2012 at 8:54

[

![Mark Longair's user avatar](https://www.gravatar.com/avatar/71c4accacd83e0e6d2193e0da83dd3aa?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/223092/mark-longair)

[Mark Longair](https://stackoverflow.com/users/223092/mark-longair)

455k7676 gold badges417417 silver badges328328 bronze badges

- 5
    
    do you mean `git submodule update --init`? all of these commands fail silently. It looks like git doesn't see modules defined only in `.gitmodules` 
    
    – [evgeniuz](https://stackoverflow.com/users/229151/evgeniuz "2,689 reputation")
    
     Jun 29, 2012 at 8:58 
    
- After the `git submodule init`, do you see any output from `git config --list | grep submodule`? (As the documentation says, `git submodule init` should "Initialize the submodules, i.e. register each submodule name and url found in .gitmodules into `.git/config`".) 
    
    – [Mark Longair](https://stackoverflow.com/users/223092/mark-longair "454,683 reputation")
    
     Jun 29, 2012 at 9:02 
    
- 1
    
    no, nothing. `git config --list` gives only standard values, no mention of submodules 
    
    – [evgeniuz](https://stackoverflow.com/users/229151/evgeniuz "2,689 reputation")
    
     Jun 29, 2012 at 9:07
    
- @Shark: that's strange - could you update your question with the contents of your `.gitmodules` file? Also, is your `.gitmodules` file definitely at the top level of your repository, rather than a subdirectory? 
    
    – [Mark Longair](https://stackoverflow.com/users/223092/mark-longair "454,683 reputation")
    
     Jun 29, 2012 at 9:08
    
- 1
    
    If some submodules are already in the index, the script will exit. To avoid that: git submodule add $url $path || true 
    
    – [schwart](https://stackoverflow.com/users/1638477/schwart "167 reputation")
    
     Nov 19, 2018 at 9:39 
    

[Show **5** more comments](https://stackoverflow.com/questions/11258737/restore-git-submodules-from-gitmodules# "Expand to show all comments on this post")

16

[](https://stackoverflow.com/posts/15302396/timeline)

Expanding on @Mark Longair's answer, I wrote a bash script to automate steps 2 & 3 of the following process:

1. Clone a 'boilerplate' repo to begin a new project
2. Remove the .git folder and re-initialize as a new repo
3. Re-initialize the submodules, prompting for input before deleting folders

---

```
#!/bin/bash

set -e
rm -rf .git
git init

git config -f .gitmodules --get-regexp '^submodule\..*\.path$' > tempfile

while read -u 3 path_key path
do
    url_key=$(echo $path_key | sed 's/\.path/.url/')
    url=$(git config -f .gitmodules --get "$url_key")

    read -p "Are you sure you want to delete $path and re-initialize as a new submodule? " yn
    case $yn in
        [Yy]* ) rm -rf $path; git submodule add $url $path; echo "$path has been initialized";;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac

done 3<tempfile

rm tempfile
```

_Note: the submodules will be checked out at the tip of their master branch instead of the same commit as the boilerplate repo, so you'll need to do that manually._

Piping the output from git config into the read loop was causing problems with the prompt for input, so it outputs it to a temp file instead. Any improvements on my first bash script would be very welcome :)

---

Big thanks to Mark, [https://stackoverflow.com/a/226724/193494](https://stackoverflow.com/a/226724/193494), [bash: nested interactive read within a loop that's also using read](https://stackoverflow.com/q/11704353/193494), and tnettenba @ chat.freenode.net for helping me arrive at this solution!

[Share](https://stackoverflow.com/a/15302396 "Short permalink to this answer")

[Improve this answer](https://stackoverflow.com/posts/15302396/edit)

Follow

[edited May 23, 2017 at 11:55](https://stackoverflow.com/posts/15302396/revisions "show all edits to this post")

[

![Community's user avatar](https://www.gravatar.com/avatar/a007be5a61f6aa8f3e85ae2fc18dd66e?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/-1/community)

[Community](https://stackoverflow.com/users/-1/community)Bot

111 silver badge

answered Mar 8, 2013 at 20:06

[

![Kevin C.'s user avatar](https://i.stack.imgur.com/VleeH.jpg?s=64&g=1)

](https://stackoverflow.com/users/193494/kevin-c)

[Kevin C.](https://stackoverflow.com/users/193494/kevin-c)

2,49711 gold badge2727 silver badges4141 bronze badges

[Add a comment](https://stackoverflow.com/questions/11258737/restore-git-submodules-from-gitmodules# "Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”.")

10

[](https://stackoverflow.com/posts/53269641/timeline)

Extending excellent @Mark Longair's answer to add submodule respecting branch and repo name.

```
#!/bin/sh

set -e

git config -f .gitmodules --get-regexp '^submodule\..*\.path$' |
    while read path_key path
    do
        name=$(echo $path_key | sed 's/\submodule\.\(.*\)\.path/\1/')
        url_key=$(echo $path_key | sed 's/\.path/.url/')
        branch_key=$(echo $path_key | sed 's/\.path/.branch/')
        url=$(git config -f .gitmodules --get "$url_key")
        branch=$(git config -f .gitmodules --get "$branch_key" || echo "master")
        git submodule add -b $branch --name $name $url $path || continue
    done
```

[Share](https://stackoverflow.com/a/53269641 "Short permalink to this answer")

[Improve this answer](https://stackoverflow.com/posts/53269641/edit)

Follow

answered Nov 12, 2018 at 20:30

[

![mauron85's user avatar](https://lh5.googleusercontent.com/-c87OgJ2ELNM/AAAAAAAAAAI/AAAAAAAAA-0/jhy09eaLnSk/photo.jpg?sz=64)

](https://stackoverflow.com/users/3896616/mauron85)

[mauron85](https://stackoverflow.com/users/3896616/mauron85)

1,44411 gold badge1616 silver badges2929 bronze badges

- 1
    
    This worked great, however it also duplicated each entry in the .gitmodules file which needs some manual cleanup after the fact. 
    
    – [Marcus Ottosson](https://stackoverflow.com/users/478949/marcus-ottosson "3,261 reputation")
    
     Aug 18, 2020 at 7:02
    

[Add a comment](https://stackoverflow.com/questions/11258737/restore-git-submodules-from-gitmodules# "Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”.")

5

[](https://stackoverflow.com/posts/59634978/timeline)

An updated version of the script by @mark-longair . This one also supports branches, handles the case where some of the submodules already exist in `.git/config`, and when necessary backs up existing directories of the same name as the submodule paths.

```
git config -f .gitmodules --get-regexp '^submodule\..*\.path$' |
    while read path_key path
    do
        url_key=$(echo $path_key | sed 's/\.path/.url/');
        branch_key=$(echo $path_key | sed 's/\.path/.branch/');
        # If the url_key doesn't yet exist then backup up the existing
        # directory if necessary and add the submodule
        if [ ! $(git config --get "$url_key") ]; then
            if [ -d "$path" ] && [ ! $(git config --get "$url_key") ]; then
                mv "$path" "$path""_backup_""$(date +'%Y%m%d%H%M%S')";
            fi;
            url=$(git config -f .gitmodules --get "$url_key");
            # If a branch is specified then use that one, otherwise
            # default to master
            branch=$(git config -f .gitmodules --get "$branch_key");
            if [ ! "$branch" ]; then branch="master"; fi;
            git submodule add -f -b "$branch" "$url" "$path";
        fi;
    done;

# In case the submodule exists in .git/config but the url is out of date

git submodule sync;

# Now actually pull all the modules. I used to use this...
#
# git submodule update --init --remote --force --recursive
# ...but the submodules would check out in detached HEAD state and I 
# didn't like that, so now I do this...

git submodule foreach --recursive 'git checkout $(git config -f $toplevel/.gitmodules submodule.$name.branch || echo master)';
```

[Share](https://stackoverflow.com/a/59634978 "Short permalink to this answer")

[Improve this answer](https://stackoverflow.com/posts/59634978/edit)

Follow

answered Jan 7, 2020 at 19:34

[

![bokov's user avatar](https://www.gravatar.com/avatar/bad33245a493e03e7b177820b6616f6c?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/945039/bokov)

[bokov](https://stackoverflow.com/users/945039/bokov)

3,48422 gold badges3333 silver badges4949 bronze badges

[Add a comment](https://stackoverflow.com/questions/11258737/restore-git-submodules-from-gitmodules# "Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”.")

3

[](https://stackoverflow.com/posts/24442247/timeline)

I had a similar issue. `git submodule init` was failing silently.

When I did:

`git submodule add <url> <path>`

I got:

`The following path is ignored by one of your .gitignore files: ...`

I'm thinking that .gitignore(d) paths might be the cause.

[Share](https://stackoverflow.com/a/24442247 "Short permalink to this answer")

[Improve this answer](https://stackoverflow.com/posts/24442247/edit)

Follow

answered Jun 27, 2014 at 0:20

[

![Henry's user avatar](https://i.stack.imgur.com/yspqU.jpg?s=64&g=1)

](https://stackoverflow.com/users/3200071/henry)

[Henry](https://stackoverflow.com/users/3200071/henry)

7,79122 gold badges3939 silver badges3838 bronze badges

[Add a comment](https://stackoverflow.com/questions/11258737/restore-git-submodules-from-gitmodules# "Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”.")

2

[](https://stackoverflow.com/posts/73415659/timeline)

I'm so surprised to see so many scripts for a very simple action and unfortunately I haven't found any tool or ready for use command. The only software so far which allows to restore it - is Gitkraken. Check here: [https://help.gitkraken.com/gitkraken-client/submodules/](https://help.gitkraken.com/gitkraken-client/submodules/)

[Share](https://stackoverflow.com/a/73415659 "Short permalink to this answer")

[Improve this answer](https://stackoverflow.com/posts/73415659/edit)

Follow

answered Aug 19, 2022 at 10:53

[

![Petr Plenkov's user avatar](https://lh3.googleusercontent.com/-VN5Uwxui-eE/AAAAAAAAAAI/AAAAAAAAAMQ/OlusZUZhno8/photo.jpg?sz=64)

](https://stackoverflow.com/users/6090293/petr-plenkov)

[Petr Plenkov](https://stackoverflow.com/users/6090293/petr-plenkov)

9166 bronze badges

- 3
    
    Actually I have found one: `npx @iclare/ksync .gitmodules . --nobackup` 
    
    – [Petr Plenkov](https://stackoverflow.com/users/6090293/petr-plenkov "91 reputation")
    
     Aug 19, 2022 at 11:35
    

[Add a comment](https://stackoverflow.com/questions/11258737/restore-git-submodules-from-gitmodules# "Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”.")

1

[](https://stackoverflow.com/posts/49247186/timeline)

I know its been a while, but I want to share this version that calls `git config` only once, doesn't requires a script and also handles branches:

```
git config -f .gitmodules --get-regexp '^submodule\.' | perl -lane'
$conf{$F[0]} = $F[1]}{
@mods = map {s,\.path$,,; $_} grep {/\.path$/} keys(%conf);
sub expand{$i = shift; map {$conf{$i . $_}} qw(.path .url .branch)}
for $i (@mods){
    ($path, $url, $branch) = expand($i);
    print(qq{rm -rf $path});
    print(qq{git submodule add -b $branch $url $path});
}
'
```

The only side effect is the output of the commands, nothing gets executed, so you can audit before committing to them.

This works with a simple copy and paste at the console, but should be trivial to put in a shell script.

example output:

```
rm -rf third-party/dht
git submodule add -b post-0.25-transmission https://github.com/transmission/dht third-party/dht
rm -rf third-party/libutp
git submodule add -b post-3.3-transmission https://github.com/transmission/libutp third-party/libutp
rm -rf third-party/libb64
git submodule add -b post-1.2.1-transmission https://github.com/transmission/libb64 third-party/libb64
rm -rf third-party/libnatpmp
git submodule add -b post-20151025-transmission https://github.com/transmission/libnatpmp third-party/libnatpmp
rm -rf third-party/miniupnpc
git submodule add -b post-2.0.20170509-transmission https://github.com/transmission/miniupnpc third-party/miniupnpc
rm -rf third-party/libevent
git submodule add -b post-2.0.22-transmission https://github.com/transmission/libevent third-party/libevent
```

[Share](https://stackoverflow.com/a/49247186 "Short permalink to this answer")

[Improve this answer](https://stackoverflow.com/posts/49247186/edit)

Follow

answered Mar 13, 2018 at 2:02

[

![alexgirao's user avatar](https://www.gravatar.com/avatar/0cba662091f1045223f954882c5baa74?s=64&d=identicon&r=PG)

](https://stackoverflow.com/users/1594261/alexgirao)

[alexgirao](https://stackoverflow.com/users/1594261/alexgirao)

88599 silver badges99 bronze badges

[Add a comment](https://stackoverflow.com/questions/11258737/restore-git-submodules-from-gitmodules# "Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”.")

0

[](https://stackoverflow.com/posts/63882080/timeline)

For zsh users, try my function which has `DRY_RUN=1` support to see what commands will be ran and only uses `git` to parse the file instead of `sed`.

```
gsub_file() {(
  set -eu

  cd "$(git rev-parse --show-toplevel)"

  submodule_paths=(
    "${(@f)$(git config --file ./.gitmodules --get-regexp "path" | awk '{ print $2 }')}"
  )
  submodule_urls=(
    "${(@f)$(git config --file ./.gitmodules --get-regexp "url" | awk '{ print $2 }')}"
  )
  submodule_branches=(
    "${(@f)$(git config --file ./.gitmodules --get-regexp "branch" | awk '{ print $2 }')}"
  )

  sh_c() {
    echo + "$*"
    if [ "${DRY_RUN-}" ]; then
      return
    fi
    eval "$@"
  }

  for (( i=1; i <= ${#submodule_paths[@]}; i++ )) do
    p="${submodule_paths[$i]}"
    if [ -d "$p" ]; then
      continue
    fi

    url="${submodule_urls[$i]}"
    unset b
    if [ "${submodule_branches[$i]-}" ]; then
      b="-b ${submodule_branches[$i]}" 
    fi
    sh_c git submodule add "${b-}" "$url" "$p"
  done
)}
```

[Share](https://stackoverflow.com/a/63882080 "Short permalink to this answer")

[Improve this answer](https://stackoverflow.com/posts/63882080/edit)

Follow

answered Sep 14, 2020 at 9:57

[

![nhooyr's user avatar](https://i.stack.imgur.com/9QGUw.jpg?s=64&g=1)

](https://stackoverflow.com/users/4283659/nhooyr)

[nhooyr](https://stackoverflow.com/users/4283659/nhooyr)

1,12411 gold badge1414 silver badges3131 bronze badges

[Add a comment](https://stackoverflow.com/questions/11258737/restore-git-submodules-from-gitmodules# "Use comments to ask for more information or suggest improvements. Avoid comments like “+1” or “thanks”.")

## Your Answer

Post Your Answer

By clicking “Post Your Answer”, you agree to our [terms of service](https://stackoverflow.com/legal/terms-of-service/public) and acknowledge you have read our [privacy policy](https://stackoverflow.com/legal/privacy-policy).

## 

Not the answer you're looking for? Browse other questions tagged 

- [git](https://stackoverflow.com/questions/tagged/git "show questions tagged 'git'")
- [git-submodules](https://stackoverflow.com/questions/tagged/git-submodules "show questions tagged 'git-submodules'")

 or [ask your own question](https://stackoverflow.com/questions/ask).

- The Overflow Blog
- [Even LLMs need education—quality data makes LLMs overperform](https://stackoverflow.blog/2024/02/26/even-llms-need-education-quality-data-makes-llms-overperform/)
    
- [How to convince your CEO it’s worth paying down tech debt](https://stackoverflow.blog/2024/02/27/how-to-convince-your-ceo-it-s-worth-paying-down-tech-debt/)
    
- Featured on Meta
- [Upcoming privacy updates: removal of the Activity data section and Google...](https://meta.stackexchange.com/questions/396794/upcoming-privacy-updates-removal-of-the-activity-data-section-and-google-conver "Upcoming privacy updates: removal of the Activity data section and Google conversion pixel deprecation")
    
- [Changing how community leadership works on Stack Exchange: a proposal and...](https://meta.stackexchange.com/questions/396924/changing-how-community-leadership-works-on-stack-exchange-a-proposal-and-rough "Changing how community leadership works on Stack Exchange: a proposal and rough timeline")
    
- [Temporary policy: Generative AI (e.g., ChatGPT) is banned](https://meta.stackoverflow.com/questions/421831/temporary-policy-generative-ai-e-g-chatgpt-is-banned)
    
- [2024 Moderator Election Q&A – Question Collection](https://meta.stackoverflow.com/questions/428183/2024-moderator-election-qa-question-collection)
    

#### Linked

[

3

](https://stackoverflow.com/q/42692250 "Question score (upvotes - downvotes)")[Use a .gitmodules from another project](https://stackoverflow.com/questions/42692250/use-a-gitmodules-from-another-project?noredirect=1)

[

1869

](https://stackoverflow.com/q/226703 "Question score (upvotes - downvotes)")[How do I prompt for Yes/No/Cancel input in a Linux shell script?](https://stackoverflow.com/questions/226703/how-do-i-prompt-for-yes-no-cancel-input-in-a-linux-shell-script?noredirect=1)

[

16

](https://stackoverflow.com/q/7629822 "Question score (upvotes - downvotes)")[Is it possible to make Git aware of an existing .gitmodules file?](https://stackoverflow.com/questions/7629822/is-it-possible-to-make-git-aware-of-an-existing-gitmodules-file?noredirect=1)

[

8

](https://stackoverflow.com/q/53896924 "Question score (upvotes - downvotes)")[Convert .gitmodules into a parsable format for iteration using Bash](https://stackoverflow.com/questions/53896924/convert-gitmodules-into-a-parsable-format-for-iteration-using-bash?noredirect=1)

[

6

](https://stackoverflow.com/q/11704353 "Question score (upvotes - downvotes)")[bash: nested interactive read within a loop that's also using read](https://stackoverflow.com/questions/11704353/bash-nested-interactive-read-within-a-loop-thats-also-using-read?noredirect=1)

[

9

](https://stackoverflow.com/q/49490272 "Question score (upvotes - downvotes)")[How to specify a tag in gitmodules file?](https://stackoverflow.com/questions/49490272/how-to-specify-a-tag-in-gitmodules-file?noredirect=1)

[

1

](https://stackoverflow.com/q/48445315 "Question score (upvotes - downvotes)")[Easiest way to add multiple Git submodules at once?](https://stackoverflow.com/questions/48445315/easiest-way-to-add-multiple-git-submodules-at-once?noredirect=1)

#### Related

[

4

](https://stackoverflow.com/q/5668158 "Question score (upvotes - downvotes)")[Reverting a submodule with Git](https://stackoverflow.com/questions/5668158/reverting-a-submodule-with-git)

[

2

](https://stackoverflow.com/q/7196519 "Question score (upvotes - downvotes)")[Working with Git submodules without .gitmodules](https://stackoverflow.com/questions/7196519/working-with-git-submodules-without-gitmodules)

[

2

](https://stackoverflow.com/q/15483276 "Question score (upvotes - downvotes)")[git submodule not working after deleting](https://stackoverflow.com/questions/15483276/git-submodule-not-working-after-deleting)

[

0

](https://stackoverflow.com/q/20708700 "Question score (upvotes - downvotes)")[How do I re-create a deleted .gitmodule file?](https://stackoverflow.com/questions/20708700/how-do-i-re-create-a-deleted-gitmodule-file)

[

11

](https://stackoverflow.com/q/27747341 "Question score (upvotes - downvotes)")[Restoring deleted submodules](https://stackoverflow.com/questions/27747341/restoring-deleted-submodules)

[

7

](https://stackoverflow.com/q/32181798 "Question score (upvotes - downvotes)")[How to restore Git submodule after deleting it?](https://stackoverflow.com/questions/32181798/how-to-restore-git-submodule-after-deleting-it)

[

4

](https://stackoverflow.com/q/38276448 "Question score (upvotes - downvotes)")[How can a git submodule be restored to it's committed version?](https://stackoverflow.com/questions/38276448/how-can-a-git-submodule-be-restored-to-its-committed-version)

[

2

](https://stackoverflow.com/q/41776331 "Question score (upvotes - downvotes)")[Is there a way to reconstruct a .git directory for a submodule?](https://stackoverflow.com/questions/41776331/is-there-a-way-to-reconstruct-a-git-directory-for-a-submodule)

[

3

](https://stackoverflow.com/q/59633536 "Question score (upvotes - downvotes)")[git submodules without .gitmodules file?](https://stackoverflow.com/questions/59633536/git-submodules-without-gitmodules-file)

[

2

](https://stackoverflow.com/q/62075868 "Question score (upvotes - downvotes)")[Git Submodule lost, able to retrieve?](https://stackoverflow.com/questions/62075868/git-submodule-lost-able-to-retrieve)

#### [Hot Network Questions](https://stackexchange.com/questions?tab=hot)