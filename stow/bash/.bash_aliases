alias ..='cd ..'
alias ...='cd ../..'

alias ls='ls -lah --color=auto'
alias grep='grep --color=auto'
alias src='cd ~/.local/src'
xs () 
{ 
    xpkg -a | fzf -m --preview 'xq {1}' --preview-window=right:66%:wrap | xargs -ro xi
}
