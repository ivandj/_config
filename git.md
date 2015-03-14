🌍
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

Setting:
    git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%C(bold blue)<%an>%Creset' --abbrev-commit"
    https://bitbucket.org/site/master/issue/3578/cannot-push-fatal-the-remote-end-hung-up
    https://github.com/codefordc/guides/blob/master/learn-github/learn-github-osx.md

Links:

    tutorial
        https://github.com/codefordc/guides/blob/master/learn-github/learn-github-osx.md
        https://www.atlassian.com/git/tutorial/git-basics
        https://bitbucket.org/site/master/issue/3578/cannot-push-fatal-the-remote-end-hung-up