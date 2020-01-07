# oh-my-zsh
export ZSH="/Users/bijanbwb/.oh-my-zsh"

# settings
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"

# plugins
plugins=(git)

# load
source $ZSH/oh-my-zsh.sh

# configuration
export EDITOR=vim
export ERL_AFLAGS="-kernel shell_history enabled"

# aliases
alias a="asdf"
alias dl="cd ~/Downloads"
alias e="exit"
alias er="elm repl"
alias g="git"
alias gs="git status"
alias ga="git add ."
alias gb="git branch"
alias gc="git commit"
alias gd="git diff"
alias gco="git checkout"
alias glo="git log --oneline"
alias i="iex"
alias im="iex -S mix"
alias imp="iex -S mix phx.server"
alias reload="source ~/.zshrc"
alias v="vim"
alias vr="vim ~/.vimrc"
alias z="vim ~/.zshrc"

# asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
