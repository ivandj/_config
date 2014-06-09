[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# Customize to your needs...
export PATH=/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH

eval "$(rbenv init -)"

    export CLICOLOR=1
    export LSCOLORS=DxGxCxDxBxegedabagaced

    alias lsa='ls -GFh -all'
    alias md='mkdir $1'
    alias cls='clear'
    alias godev='cd /Applications/XAMPP/xamppfiles/htdocs/'
    alias godoc='cd /Users/idj/\@doc'
    alias godown='cd /Users/idj/ivan/~\ down'
    alias gostp='cd /Users/idj/Library/Application\ Support/Sublime\ Text\ 3/Packages'
    alias gaa='git add -f --all && echo "git add -f --all"'
    alias gpom='echo "git push -u origin master" && git push -u origin master'
    alias gs='git status -s -b --untracked-files=all --ignored'
    alias gl='git log --graph --pretty=format:"%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset" --abbrev-commit --date=relative'
    alias gl2='git log --decorate --stat --graph --pretty=format:"%d %Cgreen%h%Creset (%ar - %Cgreen%an%Creset), %s%n"'

    alias sublime='open /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl $1'

    function cd() {
        new_directory="$*";
        if [ $# -eq 0 ]; then
            new_directory=${HOME};
        fi;
        builtin cd "${new_directory}" && ls
    }

    #export PS1="\[\e[36;1m\]\u@\[\e[32;1m\]\H> \[\e[0m\]"
    #export PS2="\[\e[1;30;47m\]| => \[\e[0m\]"

GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="yes"
GIT_PS1_SHOWDIRTYSTATE="true"
source /usr/local/git/contrib/completion/git-prompt.sh

export PROMPT_COMMAND="PS1=\"\n\[\033[0;92m\]\${color_start}\${color_bg_blue}\${color_end}\u@\h \[\033[0;97m\][\w] \[\033[0;94m\]<\$(__git_ps1 \"%s\")>\[\033[0;97m\]\${color_reset}\n> \""

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
