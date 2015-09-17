# Installation 
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Set theme name (found in in ~/.oh-my-zsh/themes/)
ZSH_THEME="robbyrussell"

# Disable auto-setting terminal title
DISABLE_AUTO_TITLE="true"

# Enable command auto-correction
ENABLE_CORRECTION="true"

# Plugins (found in ~/.oh-my-zsh/plugins/*)
plugins=(rails git ruby)

# Path
export PATH="/Users/bijanbwb/.rbenv/shims:/usr/local/bin:/usr/local/heroku/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/local/go/bin"

# Aliases
alias b='bundle exec'
alias be='bundle exec'
alias bi='bundle install'
alias c='cd'
alias e='exit'
alias g='git status'
alias gs='git status'
alias ga='git add .'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gl='git log'
alias gco='git checkout'
alias gpull='git pull'
alias gpush='git push' 
alias l='ls'
alias lg='ls && git status'
alias m='mux list'
alias mc='mux copy'
alias ml='mux list'
alias mn='mux new'
alias mo='mux open'
alias ms='mux start'
alias s='saturn'
alias sl='ls'
alias t='tmux'
alias ta='tmux attach -t'
alias tl='tmux ls'
alias tn='tmux new -s'
alias v='vim'
alias vi='vim'
alias z='vim ~/.zshrc'
alias beerfest='brew update && brew cleanup && brew prune && brew doctor'

# Exports
export EDITOR=vim
export PS1="$ "
export SKIP_LEVEL_CHECK=true
export PATH="$HOME/.rbenv/bin:$PATH"

# Hub
eval "$(hub alias -s)"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Autojump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
