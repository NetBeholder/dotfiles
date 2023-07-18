#Order of loading:
#$ZDOTDIR/.zshenv
#$ZDOTDIR/.zprofile
#$ZDOTDIR/.zshrc
#$ZDOTDIR/.zlogin
#$ZDOTDIR/.zlogout

# Global-specific
export PATH="$PATH:${$(find ~/.local/bin -type d -printf %p:)%%:}"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_BIN_HOME="$HOME/.local/bin"
export XDG_DATA_DIRS="/usr/share:/usr/local/share:/var/lib/flatpak/exports/share:$XDG_DATA_HOME/applications:$XDG_DATA_HOME/flatpak/exports/share:$XDG_DATA_DIRS" 
#
#SHELL-specific
export ZDOTDIR="$XDG_CONFIG_HOME/shell"
export HISTFILE="$XDG_STATE_HOME/zsh/.zsh_history"
export HISTSIZE=5000
export SAVEHIST=5000

export SUCKLESS_SRC_HOME="$HOME/.local/src/suckless/"

export LESSHISTFILE=-

# User-specific
export SRCDIR="$HOME/.local/src"
export EDITOR="nvim"
#export TERMINAL="alacritty"
export BROWSER="opera"
