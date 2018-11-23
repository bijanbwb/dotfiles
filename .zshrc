# zsh
export ZSH=$HOME/.oh-my-zsh

# settings
ZSH_THEME="robbyrussell"
DISABLE_AUTO_TITLE="true"

# load
source $ZSH/oh-my-zsh.sh

# aliases
alias a='asdf'
alias be='bundle exec'
alias bi='bundle install'
alias br='bundle exec rspec'
alias c='cd'
alias dl='cd ~/Downloads && ls'
alias dev='cd ~/Development && ls'
alias e='exit'
alias g='git'
alias gs='git status'
alias ga='git add .'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gl='git log'
alias gm='git merge'
alias gco='git checkout'
alias glo='git log --oneline'
alias gpull='git pull'
alias gpush='git push' 
alias i='iex'
alias l='ls'
alias lg='ls && git status'
alias reload='source ~/.zshrc'
alias rf='redis-cli FLUSHALL'
alias servedir='ruby -run -e httpd . -p 9091'
alias sg='stack ghci'
alias sl='ls'
alias t='tmux'
alias ta='tmux attach -t'
alias tc='vim ~/.tmux.conf'
alias tl='tmux ls'
alias tn='tmux new -s'
alias v='vim'
alias vi='vim'
alias vr='vim ~/.vimrc'
alias z='vim ~/.zshrc'
alias beerfest='brew update && brew upgrade && brew cleanup && brew prune && brew doctor'
alias dotfiles='cd ~/Downloads && git clone git@github.com:bijanbwb/dotfiles.git && cd ~/Downloads/dotfiles && cp ~/.tmux.conf . && cp ~/.vimrc . && cp ~/.zshrc . && ga && gc -m "Dotfiles Update" && git push origin master && echo "Dotfiles Updated"'

# exports
export EDITOR=vim
export PATH="/Users/bijanbwb/.local/bin:$PATH"
export ERL_AFLAGS="-kernel shell_history enabled"

# application settings
. $HOME/.asdf/asdf.sh && . $HOME/.asdf/completions/asdf.bash # asdf

