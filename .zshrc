# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

source ~/shiko-prompt/prompt.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
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
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

eval "$(zoxide init zsh)"

export GPG_TTY=$(tty) # for gpg stuff

export HYPRSHOT_DIR="$HOME/Pictures/Screenshots"
export BAT_THEME="OneHalfDark"
export MANPAGER='nvim +Man!'

alias ls="eza"
alias la="eza -a"
alias ll="eza --long --icons"
alias fetch="pokeget --hide-name celebi | fastfetch -c ~/.config/fastfetch/catnap.jsonc --file-raw -"
alias cd="z"
alias cdi="zi"
alias cat="bat -pp" # plain style (only code) and disables less paging
alias mkdir="mkdir -p"

export GOPATH=$HOME/go

export PATH="/bin:/usr/bin:/usr/local/bin:/sbin:${PATH}"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/zig:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"

autoload -U compinit; compinit
source ~/fzf-tab/fzf-tab.plugin.zsh

eval "$(jenv init -)"

# source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
eval $(thefuck --alias)

# To customize prompt, run `p10k configure` or edit ~/dotfiles/.p10k.zsh.
# [[ ! -f ~/dotfiles/.p10k.zsh ]] || source ~/dotfiles/.p10k.zsh

