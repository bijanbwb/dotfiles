# installation 
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# set theme name (found in in ~/.oh-my-zsh/themes/)
ZSH_THEME="robbyrussell"

# disable auto-setting terminal title
DISABLE_AUTO_TITLE="true"

# enable command auto-correction
ENABLE_CORRECTION="true"

# plugins (found in ~/.oh-my-zsh/plugins/*)
plugins=(rails git ruby)

# path
export PATH="/Users/bijanbwb/.rbenv/shims:/usr/local/bin:/usr/local/heroku/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/local/go/bin"

# aliases
alias ..='cd ..'
alias ...='cd ../..'
alias b='bundle exec'
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
alias l='ls'
alias lg='ls && git status'
alias m='mux'
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

# exports
export CAMPUS_ALL_COURSES_PATH="/Users/bijanbwb/Downloads/campus-courses-available"
export EDITOR=vim
export PS1="$ "
export SKIP_LEVEL_CHECK=true
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# hub
eval "$(hub alias -s)"

# rbenv
eval "$(rbenv init -)"

# autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# nvm
export NVM_DIR="/Users/bijanbwb/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# travis
[ -f /Users/bijanbwb/.travis/travis.sh ] && source /Users/bijanbwb/.travis/travis.sh

