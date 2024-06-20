#!/bin/zsh
#
# .zshenv: Zsh environment file, loaded always.
#
#export PATH="$PATH:${$(find ~/.local/bin -maxdepth 3 -type d,l -printf %p:)%%:}"
#export PATH="$PATH:${$(find /opt -maxdepth 3 -type d,l -printf %p:)%%:}"

# XDG
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-$HOME/.cache}
export XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}
export XDG_STATE_HOME=${XDG_STATE_HOME:-$HOME/.local/state}
export XDG_RUNTIME_DIR=${XDG_RUNTIME_DIR:-$HOME/.xdg}
export XDG_PROJECTS_DIR=${XDG_PROJECTS_DIR:-$HOME/Projects}
export XDG_BIN_HOME="$HOME/.local/bin"
#ZSH
export ZSH_COMPDUMP="${XDG_CACHE_HOME}/zsh/.zcompdump"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export ANTIDOTE_HOME="$XDG_DATA_HOME/zsh/.antidote"
#export ZIM_HOME="${XDG_DATA_HOME}/.zim"
#dotnet
export DOTNET_ROOT=$HOME/.dotnet
export DOTNET_CLI_TELEMETRY_OPTOUT=true
#export PATH="$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools"

#cargo
#export PATH="$PATH:$HOME/.cargo"

# GCM
export GCM_CREDENTIAL_STORE=gpg
export GCM_CREDENTIAL_STORE=cache
export GCM_CREDENTIAL_CACHE_OPTIONS="--timeout 1800"

#export GPG_TTY=$(tty)

export EDITOR=nvim
export TERMINAL=alacritty
# APPS
export TF_CLI_CONFIG_FILE=$HOME/.config/terraform/terraformrc
export ANSIBLE_HOST_KEY_CHECKING=False
#
#export ZDOTDIR=${ZDOTDIR:-$HOME/.config/zsh}
# Fish-like dirs
#: ${__zsh_config_dir:=${ZDOTDIR:-${XDG_CONFIG_HOME:-$HOME/.config}/zsh}}
#: ${__zsh_user_data_dir:=${XDG_DATA_HOME:-$HOME/.local/share}/zsh}
#: ${__zsh_cache_dir:=${XDG_CACHE_HOME:-$HOME/.cache}/zsh}

#typeset -gU path fpath
export DOTNET_ROOT=$HOME/.dotnet

# $PATH fullfilment
path+=(
  "$PATH:${$(find ~/.local/bin -maxdepth 3 -type d,l -printf %p:)%%:}"
  "$PATH:${$(find /opt -maxdepth 3 -type d,l -printf %p:)%%:}"
  $DOTNET_ROOT
#  $DOTNET_ROOT/tools
#  "$HOME/.cargo"
)
#export $PATH
#echo $path
## Ensure Zsh directories exist.
#() {
#  local zdir
#  for zdir in $@; do
#    [[ -d "${(P)zdir}" ]] || mkdir -p -- "${(P)zdir}"
#  done
#} __zsh_{config,user_data,cache}_dir XDG_{CONFIG,CACHE,DATA,STATE}_HOME XDG_{RUNTIME,PROJECTS}_DIR

# Load cargo env if available
if [[ -f "$HOME/.cargo/env" ]]; then source "$HOME/.cargo/env"; fi
#. "$HOME/.cargo/env"

# Ensure path arrays do not contain duplicates.
typeset -gU path fpath
