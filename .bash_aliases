#-------------------
# Personal Aliases
#-------------------
alias h='history'
alias j='jobs -l'
alias path='echo -e ${PATH//:/\\n}'
alias du='du -kh'       # Makes a more readable output.
alias df='df -kTh'
alias pserve="python -m $(python -c 'import sys; print("http.server" if sys.version_info[:2] > (2,7) else "SimpleHTTPServer")')"

#-------------------
# ls commands
#-------------------
alias ll="ls -l --group-directories-first"
alias ls='ls --color=auto'
alias la='ls -a'

#-------------------
# maven commands
#-------------------
alias mvnbuild="mvn clean install -Dmaven.javadoc.skip=true -DskipTests=true -Dmaven.test.skip=true -Dsource.skip=true"

#-------------------
# docker commands
#-------------------
alias docker-clean-vol="docker volume rm \$(docker volume ls -qf dangling=true)"
alias docker-env="eval \$(docker-machine env default)"
alias docker-rm-all-cont="docker rm \$(docker ps -a -q)"
alias docker-up="docker-machine start && docker-env && docker-compose up -d"
alias docker-stopall="docker stop \$(docker ps -a -q)"

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
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

#-------------------
# dotfiles 
#-------------------
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
