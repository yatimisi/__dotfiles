alias activate='source ./env/bin/activate'
alias pip-make-list='pip freeze > ./requirements.txt'

alias l='ls -lF'
alias lll='ls -allF'

alias cls='clear'

alias pp='ping 8.8.8.8'
alias pd='ping fb.me'

alias per='pipenv run'
alias pes='pipenv shell'
alias pei='pipenv install'

alias g='git'
alias gl='git l'
alias gb='git branch'
alias gd='git diff'
alias gs='git status'
alias gp='git push'
alias gpp='git pull'
alias ga='git add'
alias gcl='git clone'
alias gaa='git add --all'
alias gc='git commit -a'
alias gm='git commit -m'
alias gmi='git commit -m "feat: Initial commit"'
alias gz='git cz'
alias git-zip='git archive --format zip -o ../$(fd)-$(git log --pretty=format:"%h" -1).zip HEAD'

alias t='cd /tmp'

alias docker-image-clenup='docker rmi $(docker images -f "dangling=true" -q)'

alias fd='echo ${PWD##*/}'
alias tc='python -c "import sys; print(\"\\n\".join(sys.stdin.read().splitlines()), end=\"\")" | pbcopy'
