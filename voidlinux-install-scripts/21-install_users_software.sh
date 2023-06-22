#!/bin/bash

#interrupt script execution if something wrong
set -euo pipefail

# use doas if installed
# Set Privilege-Escalation-Command OR presco OR pr-es-co

[ -x "$(command -v sudo)" ] && presco="sudo"
[ -x "$(command -v doas)" ] && [ -e /etc/doas.conf ] && presco="doas"

# $HOME folder structure:
echo -e "
$HOME/.local
$HOME/.local/bin
$HOME/.local/lib
$HOME/.local/share
$HOME/.local/share/backgrounds
$HOME/.local/share/.old-stow-files
$HOME/.local/src/
$HOME/.local/src/tarfiles
$HOME/.local/src/suckless
$HOME/.local/src/suckless/tarfiles
" | xargs mkdir -p

$presco xbps-install -Suy stow 

#Stow
_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && cd "$(dirname "$(readlink "${BASH_SOURCE[0]}" || echo ".")")" && pwd)"
cd "$_path/../stow" #~/.dotfiles/stow
pwd
#echo ${_path}/../stow

##bash

[ -f $HOME/.bash_aliases ] && { mv $HOME/.bash_aliases $HOME/.local/share/.old-stow-files; } || echo "bash_alias does not exist."
[ -f $HOME/.bash_profile ] && { mv $HOME/.bash_profile $HOME/.local/share/.old-stow-files; } || echo "bash_profile does not exist."
[ -f $HOME/.bashrc ] && { mv $HOME/.bashrc $HOME/.local/share/.old-stow-files; } || echo "bashrc does not exist."

#mv ~/.bash_profile ~/.local/share/.old-stow-files/
#mv ~/.bashrc ~/.local/share/.old-stow-files/

#stow -t ~/ bash --dotfiles --adopt

##git
[ -f $HOME/.gitconfig ] && { mv $HOME/.gitconfig $HOME/.local/share/.old-stow-files; } || echo ".gitconfig does not exist."
#stow -t ~/ git --dotfiles #--adopt


stow -t ~/ * --dotfiles --adopt
$presco xbps-install -Suy stow nano neovim alacritty curl #stow and software

source $HOME/.bashrc
