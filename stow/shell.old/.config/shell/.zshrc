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

#setopt appendhistory
#instant history
setopt SHARE_HISTORY
setopt histignoredups 

#show hidden files
setopt globdots

# Automatically use menu completion after the second consecutive request for completion
setopt automenu
setopt complete_in_word
setopt completealiases
#setopt cdablevars

#setopt autocd

autoload -U compinit; compinit

#vim-style keybinds
#set -o vi

bindkey -e

source ${ANTIDOTEDIR}/antidote.zsh
antidote load ${ZDOTDIR}/.zsh_plugins.txt

source ${ZDOTDIR}/.zsh_aliases

## show completion menu on succesive tab press
#setopt auto_menu   
#setopt complete_in_word
#setopt completealiases
#setopt always_to_end

bindkey "^R" history-incremental-pattern-search-backward
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=white'

# HOME key fix
bindkey  "\e[H"                  beginning-of-line
# END key fix
bindkey  "\e[F"                  end-of-line
# Delete key finx
bindkey "^[[3~" delete-char
#typeset -A 
#key[Home]="EOH"
#key[Home]=${terminfo[khome]}
#^[OH 	 27 0033 0x1b
# 	 79 0117 0x4f
# 	 72 0110 0x48
#^[OF

#key[BackSpace]=${terminfo[kbs]}
#key[End]=${terminfo[kend]}
#key[Insert]=${terminfo[kich1]}
#key[Delete]=${terminfo[kdch1]}
#key[Up]=${terminfo[kcuu1]}
#key[Down]=${terminfo[kcud1]}
#key[Left]=${terminfo[kcub1]}
#key[Right]=${terminfo[kcuf1]}
#key[PageUp]=${terminfo[kpp]}
#key[PageDown]=${terminfo[knp]}
##[[ -n "${key[Home]}"    ]]  && bindkey  "${key[Home]}"    beginning-of-line
#bindkey  "${key[Home]}" beginning-of-line
#[[ -n "${key[End]}"     ]]  && bindkey  "${key[End]}"     end-of-line
#[[ -n "${key[Delete]}"  ]]  && bindkey  "${key[Delete]}"  delete-char
#[[ -n "${key[Up]}"   ]]  && bindkey  "${key[Up]}"    history-beginning-search-backward && bindkey -M vicmd "${key[Up]}"    history-beginning-search-backward
#[[ -n "${key[Down]}" ]]  && bindkey  "${key[Down]}"  history-beginning-search-forward && bindkey -M vicmd "${key[Down]}"  history-beginning-search-forward
#

#eval "$(starship init zsh)"
source /etc/zsh_command_not_found
