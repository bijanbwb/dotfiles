# Installation 
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Set theme name (found in in ~/.oh-my-zsh/themes/)
ZSH_THEME="robbyrussell"

# Disable auto-setting terminal title
DISABLE_AUTO_TITLE="true"

# Enable command auto-correction
ENABLE_CORRECTION="true"

# Plugins (found in ~/.oh-my-zsh/plugins/*)
plugins=(rails git ruby)

# Disable zsh autocorrection
unsetopt correct_all

# Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias a='asdf'
alias be='bundle exec'
alias bi='bundle install'
alias br='bundle exec rspec'
alias c='cd'
alias dl='cd ~/Downloads && ls'
alias e='exit'
alias g='git'
alias gs='git status'
alias ga='git add .'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gh='git browse'
alias gi='git browse -- issues'
alias gl='git log'
alias gm='git merge'
alias gco='git checkout'
alias glo='git log --oneline'
alias gpr='git browse -- pulls'
alias gpull='git pull'
alias gpush='git push' 
alias i='iex'
alias irb='irb --simple-prompt'
alias l='ls'
alias lg='ls && git status'
alias reload='source ~/.zshrc'
alias servedir='ruby -run -e httpd . -p 9091'
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
alias beerfest='brew update && brew cleanup && brew prune && brew doctor'
alias dotfiles='c ~/Downloads && git clone git@github.com:bijanbwb/dotfiles.git && c ~/Downloads/dotfiles && cp ~/.tmux.conf . && cp ~/.vimrc . && cp ~/.zshrc . && ga && gc -m "Dotfiles Update" && git push origin master && echo "Dotfiles Updated"'

# Exports
export CAMPUS_ALL_COURSES_PATH="/Users/bijanbwb/Downloads/campus-courses-available"
export EDITOR=vim
export PS1="$ "
export SKIP_LEVEL_CHECK=true
export PATH="/usr/local/bin:/usr/local/heroku/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin"
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin"

# Hub
eval "$(hub alias -s)"

# Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# Travis
[ -f /Users/bijanbwb/.travis/travis.sh ] && source /Users/bijanbwb/.travis/travis.sh

# asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

