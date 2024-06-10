#Order of z-loading:
#$ZDOTDIR/.zshenv
#$ZDOTDIR/.zprofile
#$ZDOTDIR/.zshrc
#$ZDOTDIR/.zlogin
#$ZDOTDIR/.zlogout

echo "zprofile here-12345"
#export PATH="$PATH:$(find ~/.local/bin -type d | paste -sd ':' -)"
export PATH="$PATH:${$(find ~/.local/bin -maxdepth 3 -type d,l -printf %p:)%%:}"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_BIN_HOME="$HOME/.local/bin"
export ZSH_COMPDUMP=${XDG_CACHE_HOME}/zsh/.zcompdump
export ZDOTDIR="$XDG_CONFIG_HOME/shell"
#dotnet
export DOTNET_ROOT=$HOME/.dotnet
export DOTNET_CLI_TELEMETRY_OPTOUT=true
export PATH="$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools"
#cargo
export PATH="$PATH:$HOME/.cargo"
#
export GPG_TTY=$(tty)
export EDITOR=nvim
export TERMINAL=alacritty
#export SXHKD_SHELL=/bin/bash
# APPS
export TF_CLI_CONFIG_FILE=$HOME/.config/terraform/terraformrc
export ANSIBLE_HOST_KEY_CHECKING=False
#export HISTFILE="$XDG_DATA_HOME/zsh/history"
export HISTFILE="$XDG_STATE_HOME/zsh/history"

# Regional settings
export LC_TIME="ru_RU.UTF8"
#export LC_LANG="ru_RU.UTF-8"'
#export LC_CTYPE="ru_RU.UTF-8"'
export LC_NUMERIC="ru_RU.UTF-8"
export LC_TIME=ru_RU.UTF8
export LC_COLLATE="ru_RU.UTF-8"
export LC_MONETARY="ru_RU.UTF-8"
#export LC_MESSAGES="ru_RU.UTF-8"'
export LC_PAPER="ru_RU.UTF-8"
export LC_NAME="ru_RU.UTF-8"
export LC_ADDRESS="ru_RU.UTF-8"
export LC_TELEPHONE="ru_RU.UTF-8"
export LC_MEASUREMENT="ru_RU.UTF-8"
export LC_IDENTIFICATION="ru_RU.UTF-8"
#export LC_ALL='

# Ensure path arrays do not contain duplicates.
typeset -gU path fpath










#alias ..='cd ..'
#alias ...='cd ../..'
#
#alias vim="nvim"
#alias ls='ls -lah --color=auto'
#alias grep='grep --color=auto'
#alias src='cd ~/.local/src'
#alias dwm-restart='pkill -HUP dwm'
#function xs () {
#    xpkg -a | fzf -m --preview 'xq {1}' --preview-window=right:66%:wrap | xargs -ro xi
#}
