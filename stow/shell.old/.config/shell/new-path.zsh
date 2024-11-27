#!/bin/zsh

typeset -gU path fpath
export DOTNET_ROOT=$HOME/.dotnet
path+=(
#  "$PATH:${$(find ~/.local/bin -maxdepth 3 -type d,l -printf %p:)%%:}"
#  "$PATH:${$(find /opt -maxdepth 3 -type d,l -printf %p:)%%:}"
  $DOTNET_ROOT
  $DOTNET_ROOT/tools
  "$HOME/.cargo"
  /a/b/c
)
echo $path

#export PATH="$PATH:${$(find ~/.local/bin -maxdepth 3 -type d,l -printf %p:)%%:}"
#export PATH="$PATH:${$(find /opt -maxdepth 3 -type d,l -printf %p:)%%:}"

#export PATH="$PATH:$HOME/.cargo"

#export DOTNET_ROOT=$HOME/.dotnet
#export DOTNET_CLI_TELEMETRY_OPTOUT=true
#export PATH="$PATH:$DOTNET_ROOT:$DOTNET_ROOT/tools"
