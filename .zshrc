# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# settings
CASE_SENSITIVE="true"
DISABLE_AUTO_TITLE="true"
HYPHEN_INSENSITIVE="true"
ZSH_THEME="robbyrussell"

# updates
zstyle ':omz update' mode auto
zstyle ':omz update' frequency 30

# plugins
plugins=()

# load
source $ZSH/oh-my-zsh.sh

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# exports
export EDITOR=vim
export ELIXIR_EDITOR="code-insiders -rg"
export ERL_AFLAGS="-kernel shell_history enabled"
export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac --without-wx --with-ssl=$(brew --prefix openssl@1.1)"
export KERL_BUILD_DOCS=yes

# aliases
alias code="code-insiders"
alias confetti="open raycast://extensions/raycast/raycast/confetti"
alias dev="cd ~/Development"
alias dl="cd ~/Downloads"
alias e="exit"
alias ga="git add ."
alias gb="git branch"
alias gc="git commit"
alias gd="git diff"
alias gp="git push -u origin HEAD"
alias gs="git status"
alias gcl="git clean -df"
alias gco="git checkout"
alias glo="git log --oneline"
alias mux="tmuxinator"
alias phx="iex -S mix phx.server"
alias reload="source ~/.zshrc"
alias t="tmux"
alias ta="tmux attach-session -t "
alias tc="vim ~/.tmux.conf"
alias tl="tmux list-sessions"
alias up="omz update && asdf plugin-update --all && brew update && brew upgrade && brew cleanup && brew doctor"
alias uuid="uuidgen | tr '[:upper:]' '[:lower:]'"
alias v="vim"
alias vr="vim ~/.vimrc"
alias z="vim ~/.zshrc"

# corrections
unsetopt correct_all
unsetopt correct

# asdf
. /opt/homebrew/opt/asdf/libexec/asdf.sh
