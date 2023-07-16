alias ..='cd ..'
alias ...='cd ../..'

alias vim="nvim"
alias ls='ls -lah --color=auto'
alias grep='grep --color=auto'
alias src='cd ~/.local/src'
alias dwm-restart='pkill -HUP dwm'
function xs () {
    xpkg -a | fzf -m --preview 'xq {1}' --preview-window=right:66%:wrap | xargs -ro xi
}
