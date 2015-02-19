export PATH="/usr/local/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

    export CLICOLOR=1
    export LSCOLORS=DxGxCxDxBxegedabagaced

GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="yes"
GIT_PS1_SHOWDIRTYSTATE="true"


export PROMPT_COMMAND="PS1=\"\n\[\033[0;92m\]\${color_start}\${color_bg_blue}\${color_end}\u@\h \[\033[0;97m\][\w] \[\033[0;94m\]<\$(__git_ps1 \"%s\")>\[\033[0;97m\]\${color_reset}\n> \""

  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi


    alias ~="cd ~"
    alias ..='cd ..'
    alias lsa='ls -GFh -all'
    alias md='mkdir $1 && cd $1'
    alias cls='clear'
    alias godev='cd /Applications/XAMPP/xamppfiles/htdocs/'

    # ----------------------
    # Git Aliases
    # ----------------------
    alias gtaa='git add . -f'
    alias gtm='git commit -m'
    alias gti='git init'
    alias gtl1='git log --graph --oneline --decorate --all'
    alias gtl2='git log --pretty=format:"%h %ad %s" --date=short --all'
    alias gtl3='git log --graph --pretty=format:"%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset" --abbrev-commit --date=relative'
    alias gtl4='git log --decorate --stat --graph --pretty=format:"%d %Cgreen%h%Creset (%ar - %Cgreen%an%Creset), %s%n"'
    alias gts='git status -s -b --untracked-files=all --ignored'
    alias gtpom='echo >> git push -u origin master && git push -u origin master'

    alias ga='git add'
    alias gaaa='git add -A'
    alias gb='git branch'
    alias gbd='git branch -d '
    alias gc='git commit'
    alias gco='git checkout'
    alias gcob='git checkout -b'
    alias gcom='git checkout master'
    alias gd='git diff'
    alias gda='git diff HEAD'
    alias gl='git log'
    alias gm='git merge --no-ff'
    alias gp='git pull'
    alias gst='git stash'
    alias gstl='git stash list'
    alias gstp='git stash pop'
    alias gstd='git stash drop'

    # ----------------------
    # Git Functions
    # ----------------------
    # Git log find by commit message
    function glf() { git log --all --grep="$1"; }

    #alias sublime='open /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl $1'

#source ~/.oh-my-git/prompt.sh
