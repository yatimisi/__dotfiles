function run() {
    local script="$1"

    if [ -f "$HOME/.dotfiles/scripts/$script" ]; then
        printf "\n"
        sh "$HOME/.dotfiles/scripts/$script"
    else
        printf "Not have $script, please choose the options:\n"
        ls -1 $HOME/.dotfiles/scripts | awk '{ print "   "$0 }' | grep -v "run.zsh"
    fi
}