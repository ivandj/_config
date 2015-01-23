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
    #alias godoc='cd /Users/idj/\@doc'
    #alias godown='cd /Users/idj/ivan/~\ down'
    #alias gostp='cd /Users/idj/Library/Application\ Support/Sublime\ Text\ 3/Packages'
    #alias gaa='git add -f --all && echo "git add -f --all"'
    #alias gpom='echo "git push -u origin master" && git push -u origin master'
    alias gs='git status -s -b --untracked-files=all --ignored'
    alias gl='git log --graph --pretty=format:"%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset" --abbrev-commit --date=relative'
    alias gl2='git log --decorate --stat --graph --pretty=format:"%d %Cgreen%h%Creset (%ar - %Cgreen%an%Creset), %s%n"'
    #alias sublime='open /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl $1'
