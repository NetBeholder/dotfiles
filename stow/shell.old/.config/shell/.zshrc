# Zsh options.
setopt extended_glob


###
#PlUGIN MANAGER
export ANTIDOTE_HOME="$XDG_DATA_HOME/zsh/.antidote"
#
# Download zimfw plugin manager if missing.
if [[ ! -e ${ANTIDOTE_HOME}/antidote.zsh ]]; then
  echo "Create antidote directory..."
  mkdir -p ${ANTIDOTE_HOME}
  echo "Download mattmc3/antidote"
  git clone --depth=1 https://github.com/mattmc3/antidote.git ${ANTIDOTEDIR}
fi

#if [[ ! -d ${ANTIDOTEDIR} ]]; then
#    echo "Create antidote directory..."
#    mkdir -p ${ANTIDOTEDIR}
#    echo "Download mattmc3/antidote"
#    git clone --depth=1 https://github.com/mattmc3/antidote.git ${ANTIDOTEDIR}
#else #nothing
##    echo "No downloading"
#fi

# PlUGIN MANAGER
source ${ZDOTDIR}/.zsh_aliases
source ${ANTIDOTE_HOME}/antidote.zsh
antidote load ${ZDOTDIR}/.zsh_plugins.txt
# END PLUGIN MANAGER
#
#autoload -Uz compinit && compinit
# PROMPT_CONFIG
PURE_PROMPT_SYMBOL=λ
#prompt pure
# END PROMPT CONFIG



# Variables


# HISTORY
if [[ ! -d ${XDG_STATE_HOME}/zsh ]]; then
	echo "Create dir for zsh's history file"
	mkdir -p ${XDG_STATE_HOME}/zsh 
fi

export HISTFILE="$XDG_STATE_HOME/zsh/history"
export HISTSIZE=99000  	 	 # The maximum number of events to save in the internal history.
export SAVEHIST=99000  		 # The maximum number of events to save in the history file.

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY	 # Commands are added to the history immediately
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt SHARE_HISTORY             # Share history between all sessions.
# END HISTORY

bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
#bindkey -M vicmd 'k' history-substring-search-up
#bindkey -M vicmd 'j' history-substring-search-down

bindkey -e
source /etc/zsh_command_not_found
. "$HOME/.cargo/env"
