function al() {
    local option="$1"

    if [[ $option == 'help' ]] || [[ $option == '' ]]; then
        printf """usage: al [help]\n"
        printf "          <command> [<args>]\n"
        printf "\n"
        printf "These are common commands used in various situations:\n"
        printf "\n"
        printf "   open [name]    Open an alias group\n"
        printf "   save                Save change\n"
        printf "   <name>         Print an alias group\n"
        printf "\n"
        printf "Alias:\n"
        ls -1 $HOME/.zsh/alias | sed 's/.zsh//g' | awk '{ print "   "$0 }'
    elif [[ $option == 'open' ]]; then
        local aliasName="$2"
        if [[ $aliasName == '' ]]; then
            vi $HOME/.zsh/alias.zsh
        else
            vi "$HOME/.zsh/alias/$aliasName.zsh"
        fi
    elif [[ $option == 'save' ]]; then
        exec $SHELL
    elif [ -f "$HOME/.zsh/alias/$option.zsh" ]; then
        printf "\n"
        printf "Alias:\n"
        cat "$HOME/.zsh/alias/$option.zsh" | sed 's/alias /   /g'
    else
        printf "Not have $option, please choose the options:\n"
        ls -1 $HOME/.zsh/alias | sed 's/.zsh//g' | awk '{ print "   "$0 }'
    fi
}

function hp() {
    local option="$1"

    if [[ $option == 'help' ]] || [[ $option == '' ]]; then
        printf """usage: hp [help]\n"
        printf "          <command> [<args>]\n"
        printf "\n"
        printf "These are common commands used in various situations:\n"
        printf "\n"
        printf "   open [Name]     Open an note\n"
        printf "\n"
        printf "Notes:\n"
        ls -1 $HOME/.zsh/notes | awk '{ print "   "$0 }'
    elif [[ $option == 'open' ]]; then
        local notesName="$2"
        if [[ $notesName != '' ]]; then
            vi "$HOME/.zsh/notes/$notesName.zsh"
        fi
    elif [ -f "$HOME/.zsh/notes/$option" ]; then
        printf "\n"
        printf "Notes:\n"
        cat "$HOME/.zsh/notes/$option" | awk '{ print "   "$0 }'
    else
        printf "Not have $option, please choose the options:\n"
        ls -1 $HOME/.zsh/notes | awk '{ print "   "$0 }'
    fi
}

for f in $HOME/.zsh/alias/*; do source $f; done