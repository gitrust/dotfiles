#!/usr/bin/env bash

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

#-------------------
# Personal Aliases
#-------------------
alias h='history'
alias j='jobs -l'
alias path='echo -e ${PATH//:/\\n}'
alias du='du -kh'       # Makes a more readable output.
alias df='df -kTh'

#-------------------
# ls commands
#-------------------
alias ll="ls -l --group-directories-first"
alias ls='ls --color=auto'
alias la='ls -a'

#-------------------
# cd commands
#-------------------
alias cd..="cd .."
alias cd...="cd ../.."
alias cd....="cd ../../.."

#-------------------
# maven commands
#-------------------
alias mvnbuild="mvn clean install -Dmaven.javadoc.skip=true -DskipTests=true -Dmaven.test.skip=true -Dsource.skip=true"

#-------------------
# docker commands
#-------------------
alias docker-clean-vol="docker volume rm \$(docker volume ls -qf dangling=true)"
alias docker-rm-all="docker rm \$(docker ps -a -q)"

#-------------------
# git commands
#-------------------
alias glocalcommits="git log --branches --not --remotes"
alias gbranches="git branch --merged"
alias gdelbranches='git branch --no-color --merged | command grep -vE "^(\*|\s*(master|develop|dev)\s*$)" | command xargs -n 1 git branch -d'
alias gfetchtags="git fetch --all --tags --prune"
alias glasthour='git diff $(git log -1 --before=@{last.hour} --format=%H) --stat' 
alias glastblock='git diff $(git log -1 --before=@{4.hours.ago} --format=%H) --stat' 
alias glastday='git diff $(git log -1 --before=@{last.day} --format=%H) --stat' 
alias glastweek='git diff $(git log -1 --before=@{last.week} --format=%H) --shortstat | uniq' 
alias glastmonth='git diff $(git log -1 --before=@{last.month} --format=%H) --shortstat | uniq'
alias gchfiles='git diff-tree --no-commit-id --name-only -r'

#-------------------
# misc
#-------------------
alias diff="diff --color"

# pbcopy and pbpaste are known on MacOS
# we use an alias to imitate their behavior
# - primary is for text you have selected past
# - clipboard is for text you copy with CTRL+C
alias pbcopy='xclip -selection primary'
alias pbpaste='xclip -selection primary -o'
alias pbclear='echo -n | xclip -selection primary'

#-------------------
# dotfiles alias for 'git' command
# dotfiles git repository
#-------------------
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
