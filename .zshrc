# oh-my-zsh
export ZSH="/Users/bijanbwb/.oh-my-zsh"

# settings
ZSH_THEME="robbyrussell"
HYPHEN_INSENSITIVE="true"
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"

# plugins
plugins=(git zsh-completions)

# load
source $ZSH/oh-my-zsh.sh

# configuration
export EDITOR=vim
export ERL_AFLAGS="-kernel shell_history enabled"
export TERM="xterm-256color"

# aliases
alias a="asdf"
alias ap="asdf plugin-update --all"
alias bs="./bin/start"
alias bset="./bin/setup"
alias dev="cd ~/Development"
alias dl="cd ~/Downloads"
alias drop="cd ~/Dropbox"
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
alias i="iex -S mix"
alias phx="iex -S mix phx.server"
alias reload="source ~/.zshrc"
alias sp="emacs -nw ./"
alias ss="./scripts/server"
alias t="tmux"
alias ta="tmux attach-session -t "
alias tc="vim ~/.tmux.conf"
alias tl="tmux list-sessions"
alias tn="tmux new-session -s "
alias up="upgrade_oh_my_zsh && ap && bu"
alias v="vim"
alias vr="vim ~/.vimrc"
alias z="vim ~/.zshrc"

# asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
