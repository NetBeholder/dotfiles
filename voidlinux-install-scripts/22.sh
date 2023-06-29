#!/bin/bash

#interrupt script execution if something wrong
set -euo pipefail

# use doas if installed
# Set Privilege-Escalation-Command OR presco OR pr-es-co

[ -x "$(command -v sudo)" ] && presco="sudo"
[ -x "$(command -v doas)" ] && [ -e /etc/doas.conf ] && presco="doas"

$presco xbps-install -Suy stow fzf nano neovim alacritty #stow and software

# $HOME folder structure:
echo -e "
$HOME/.local
$HOME/.local/bin
$HOME/.local/lib
$HOME/.local/share
$HOME/.local/share/backgrounds
$HOME/.local/share/.old-stow-files
$HOME/.local/share/fonts/
$HOME/.local/share/fonts/truetype/
$HOME/.local/src/
$HOME/.local/src/tarfiles
$HOME/.local/src/suckless
$HOME/.local/src/suckless/tarfiles
" | xargs mkdir -p

##bash

[ -f $HOME/.bash_aliases ] && { mv $HOME/.bash_aliases $HOME/.local/share/.old-stow-files; } || echo "bash_alias does not exist."

[ -f $HOME/.bash_profile ] && { mv $HOME/.bash_profile $HOME/.local/share/.old-stow-files; } || echo "bash_profile does not exist."

[ -f $HOME/.bashrc ] && { mv $HOME/.bashrc $HOME/.local/share/.old-stow-files; } || echo "bashrc does not exist."

[ -f $HOME/.gitconfig ] && { mv $HOME/.gitconfig $HOME/.local/share/.old-stow-files; } || echo ".gitconfig does not exist."


#Stow
#проставить путь
_path="$(cd "$(dirname "${BASH_SOURCE[0]}")" && cd "$(dirname "$(readlink "${BASH_SOURCE[0]}" || echo ".")")" && pwd)"
cd "$_path/../stow" #~/.dotfiles/stow
pwd

#stow -t ~/ git --dotfiles #--adopt

stow -t ~/ * --dotfiles --adopt
