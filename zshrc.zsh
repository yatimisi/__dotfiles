## Load antigen
source "$HOME/.antigen/bin/antigen.zsh"

## Load the oh-my-zsh's library.
antigen use oh-my-zsh

## Load plugins
antigen bundle pip
antigen bundle docker
antigen bundle docker-compose
antigen bundle web-search
antigen bundle qoomon/zsh-lazyload
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

## Load theme config
source "$HOME/.dotfiles/zsh/theme.zsh"

## Set theme
antigen theme denysdovhan/spaceship-prompt

## Apply settings
antigen apply

## Load custom settings
source "$HOME/.dotfiles/zsh/alias.zsh"
source "$HOME/.dotfiles/zsh/note.zsh"
source "$HOME/.dotfiles/zsh/config.zsh"

for f in $HOME/.dotfiles/zsh/environmentals/*.zsh; do source $f; done

lazyload pyenv python pip pipenv poetry -- 'source "$HOME/.dotfiles/zsh/environmentals/lazyload/python.zsh"'
