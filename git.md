git clone https://ivandj@github.com/[repo]

    git config --global user.name "John Doe"
    git config --global user.email johndoe@example.com

    git init
    git status

    git add [filename]
    git add .
    git add . -f

    git commit -m "commit description"

    git push -u origin master

revert:
    git checkout <commit#> <file>
    git revert <commit#>

getting the update from remote:
    git fetch origin master

search:
    git log -S foo
    https://robots.thoughtbot.com/code-sleuthing-with-git

set remote:
    git remote set-url origin https://github.com/USERNAME/OTHERREPOSITORY.git
    git remote set-url origin git@github.com:USERNAME/OTHERREPOSITORY.git

branches
    # Start a new feature
    git checkout -b new-feature master

    # Edit some files
    git add
    git commit -m "Start a feature"

    # Edit some files
    git add
    git commit -m "Finish a feature"

    # Merge in the new-feature branch
    git checkout master
    git merge new-feature
    git branch -d new-feature

~~~

#moving from bitbucket to github


    clone to local
        git clone --mirror https://ivandj-ct@bitbucket.org/computech/bbm.git

    set the new repo
        git remote set-url --push origin https://github.com/FCC/nbm.git

    push to the new repo
        git push --mirror


    Got an error. some files are too big (>100mb - github doesn't allow)


    Get hashes
        git rev-list --objects --all | sort -k 2 > allfileshas.txt

    Get a list of big objects
        git gc && git verify-pack -v .git/objects/pack/pack-*.idx | egrep "^\w+ blob\W+[0-9]+ [0-9]+ [0-9]+$" | sort -k 3 -n -r > bigobjects.txt

    Find the path of the big object based on hash

    run to eliminate big file and rewrite history
        git filter-branch --index-filter 'git rm --cached --ignore-unmatch docs/Data Processing/FILES/Dec2013/NBM_SPDTEST_STATS.csv' -- --all
        git filter-branch --index-filter 'git rm --cached --ignore-unmatch NationalBroadbandMap/src/test/resources/almanac/sql/cai.sql' -- --all

        git filter-branch --prune-empty --index-filter 'git rm -rf --cached --ignore-unmatch NationalBroadbandMap/src/test/resources/almanac/sql/cai.sql' -- --all
        git filter-branch --prune-empty --index-filter 'git rm -rf --cached --ignore-unmatch docs/Data Processing/FILES/Dec2013/NBM_SPDTEST_STATS.csv' -- --all
        git filter-branch --prune-empty --index-filter 'git rm -rf --cached --ignore-unmatch docs/Data Processing/FILES/Dec2013/NBM_SPDTEST_STATS.csv' HEAD
        git filter-branch --prune-empty --index-filter 'git rm -rf --cached --ignore-unmatch "docs/Data Processing/FILES/Dec2013/NBM_SPDTEST_STATS.csv"' HEAD

        git filter-branch --prune-empty --index-filter 'git rm -f --cached --ignore-unmatch NBM_SPDTEST_STATS.csv' -- --all

        git filter-branch --index-filter 'git rm -r --cached --ignore-unmatch docs/Data Processing/FILES/Dec2013/NBM_SPDTEST_STATS.csv' HEAD
        git filter-branch --index-filter 'git rm -r --cached --ignore-unmatch docs/Data Processing/FILES/Dec2013/NBM_SPDTEST_STATS.csv' e6e777a


    remove references
        rm -rf .git/refs/original/ && git reflog expire --all &&  git gc --aggressive --prune



    push to repo

        git push origin --force --all

    git clone --no-hardlinks file:///Users/yourUser/your/full/repo/path repo-clone-name







~~~














Setting:
    git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"
    https://bitbucket.org/site/master/issue/3578/cannot-push-fatal-the-remote-end-hung-up
    https://github.com/codefordc/guides/blob/master/learn-github/learn-github-osx.md

Links:

    tutorial
        https://github.com/codefordc/guides/blob/master/learn-github/learn-github-osx.md
        https://www.atlassian.com/git/tutorial/git-basics
        https://bitbucket.org/site/master/issue/3578/cannot-push-fatal-the-remote-end-hung-up