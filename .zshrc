source '/usr/share/zsh-antidote/antidote.zsh'
antidote load

autoload -Uz compinit && compinit

HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

set -o vi
bindkey -v '^?' backward-delete-char

eval "$(zoxide init zsh)"

export TERM='xterm-256color'
export GPG_TTY=$(tty)
export HYPRSHOT_DIR="$HOME/Pictures/Screenshots"
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/config"
export BAT_THEME="OneHalfDark"
export MANPAGER='nvim +Man!'
export VISUAL=nvim
export EDITOR="$VISUAL"

alias cat="bat -pp"
alias cd="z"
alias cdi="zi"
alias fetch="pokeget --hide-name oshawott | fastfetch -c ~/.config/fastfetch/catnap.jsonc --file-raw -"
alias la="eza -a"
alias ll="eza --long --icons"
alias ls="eza"
alias mkdir="mkdir -p"
alias open="xdg-open"
alias senv="source .venv/bin/activate"
alias szsh="source ~/.zshrc"
alias untar="tar -xvf"
alias untgz="tar -xzvf"
alias v="nvim"
alias vzsh="nvim ~/.zshrc"
alias gst="git status"

bak() {
  cp -aL "$1" "$1.bak"
}

copy() {
  cat "$1" | wl-copy
}

fuck() {
  unset -f fuck
  eval $(thefuck --alias)
  fuck "$@"
}

path=(
  "/bin"
  "/usr/bin"
  "/usr/local/bin"
  "/sbin"
  "$HOME/.local/bin"
  "$HOME/.cargo/bin"
  "$HOME/.local/share/gem/ruby/3.4.0/bin"
  $path
)

typeset -U path

export GOPATH=$HOME/go
export ANDROID_HOME=~/Android
export ANDROID_SDK_ROOT=$ANDROID_HOME/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(shiko init)"
