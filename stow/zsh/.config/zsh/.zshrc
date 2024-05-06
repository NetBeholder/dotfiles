# Zsh options.
setopt extended_glob


###
#PlUGIN MANAGER
ANTIDOTEDIR="$XDG_DATA_HOME/zsh/.antidote"

if [[ ! -d ${ANTIDOTEDIR} ]]; then
    echo "Create antidote directory..."
    mkdir -p ${ANTIDOTEDIR}
    echo "Download mattmc3/antidote"
    git clone --depth=1 https://github.com/mattmc3/antidote.git ${ANTIDOTEDIR}
else #nothing
#    echo "No downloading"
fi
# PlUGIN MANAGER
source ${ZDOTDIR}/.zsh_aliases
source ${ANTIDOTEDIR}/antidote.zsh
antidote load ${ZDOTDIR}/.zsh_plugins.txt

autoload -Uz compinit && compinit

PURE_PROMPT_SYMBOL=λ
#prompt pure

#
# Variables
#

export HISTFILE="$XDG_STATE_HOME/zsh/history"
export HISTSIZE=99000  # The maximum number of events to save in the internal history.
export SAVEHIST=99000  # The maximum number of events to save in the history file.
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
#bindkey -M vicmd 'k' history-substring-search-up
#bindkey -M vicmd 'j' history-substring-search-down

bindkey -e
