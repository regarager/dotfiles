source ~/zsh-defer/zsh-defer.plugin.zsh

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

set -o vi
bindkey -v '^?' backward-delete-char

zstyle :compinstall filename '$HOME/.zshrc'

lazy-compinit() {
  unfunction lazy-compinit
  autoload -Uz compinit
  compinit
  bindkey "^I" expand-or-complete
  zle expand-or-complete
}

zle -N lazy-compinit
bindkey "^I" lazy-compinit

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs:info:git:*' formats '%b '

export TERM='xterm-256color'

zsh-defer source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
zsh-defer source ~/fzf-tab/fzf-tab.plugin.zsh

eval "$(zoxide init zsh)"

export GPG_TTY=$(tty)
export HYPRSHOT_DIR="$HOME/Pictures/Screenshots"
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgrep/config"
export BAT_THEME="OneHalfDark"
export MANPAGER='nvim +Man!'
export VISUAL=nvim
export EDITOR="$VISUAL"

alias cat="bat -pp" # plain style (only code) and disables less paging
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

bak () {
  mv "$1" "$1.bak"
}

copy() {
  cat "$1" | wl-copy
}

fuck() {
  unset -f fuck
  eval $(thefuck --alias)
  fuck "$@"
}

export GOPATH=$HOME/go

export PATH="/bin:/usr/bin:/usr/local/bin:/sbin:${PATH}"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/zig:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH"

export ANDROID_HOME=~/Android
export ANDROID_SDK_ROOT=$ANDROID_HOME/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin

source ~/shiko-prompt/shiko.zsh
