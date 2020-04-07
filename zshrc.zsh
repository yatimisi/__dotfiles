## Load antigen
source $HOME/.antigen/bin/antigen.zsh

## Load the oh-my-zsh's library.
antigen use oh-my-zsh

## Load plugins
antigen bundle pip
antigen bundle docker
antigen bundle docker-compose
antigen bundle web-search
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

## Load theme config
source $HOME/.zsh/theme.zsh

## Set theme
antigen theme denysdovhan/spaceship-prompt

## Apply settings
antigen apply

## Load custom settings
source $HOME/.zsh/alias.zsh
source $HOME/.zsh/note.zsh

source $HOME/.zsh/environmental.zsh
