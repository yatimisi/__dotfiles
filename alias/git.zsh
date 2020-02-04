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
_gac() {
    git add --all
    if [ "$1" != "" ]
    then
      git commit -m "$1"
    else
      DATE=$(date +%Y/%m/%d-%H:%M:%S)
      git commit -m "update $DATE" # default commit message is `update`
    fi
}
alias gac=_gac;
