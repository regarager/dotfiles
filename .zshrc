source ~/shiko-prompt/shiko.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs:info:git:*' formats '%b '

export TERM='xterm-256color'

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(zoxide init zsh)"

export GPG_TTY=$(tty)

export HYPRSHOT_DIR="$HOME/Pictures/Screenshots"
export BAT_THEME="OneHalfDark"
export MANPAGER='nvim +Man!'

export VISUAL=nvim
export EDITOR="$VISUAL"

alias ls="eza"
alias la="eza -a"
alias ll="eza --long --icons"
alias fetch="pokeget --hide-name celebi | fastfetch -c ~/.config/fastfetch/catnap.jsonc --file-raw -"
alias cd="z"
alias cdi="zi"
alias cat="bat -pp" # plain style (only code) and disables less paging
alias mkdir="mkdir -p"
alias v="nvim"
alias untar="tar -xvf"
alias untgz="tar -xzvf"
alias vzsh="nvim ~/.zshrc"
alias szsh="source ~/.zshrc"
alias senv="source .venv/bin/activate"
alias open="xdg-open"

bak ()
{
  mv "$1" "$1.bak"
}

copy()
{
  cat "$1" | wl-copy
}

export GOPATH=$HOME/go

export PATH="/bin:/usr/bin:/usr/local/bin:/sbin:${PATH}"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/zig:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export PATH="$HOME/.local/share/gem/ruby/3.4.0/bin:$PATH"

autoload -U compinit; compinit
source ~/fzf-tab/fzf-tab.plugin.zsh

eval "$(jenv init -)"

eval $(thefuck --alias)

export ANDROID_HOME=~/Android
export ANDROID_SDK_ROOT=$ANDROID_HOME/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin
