# include .bash_aliases file if it exists
if [ -f $HOME/.bash_aliases ]; then
    . $HOME/.bash_aliases
fi

# BASH Completions
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

#PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

if [ "`id -u`" -eq 0 ]; then
    #PS1="\[\033[m\]|\[\033[1;35m\]\t\[\033[m\]|\[\e[1;31m\]\u\[\e[1;36m\]\[\033[m\]@\[\e[1;36m\]\h\[\033[m\]:\[\e[0m\]\[\e[1;32m\][\W]> \[\e[0m\]"
    #PS1=' \[\e[0;91m\]λ \[\e[0;92m\]\W \[\e[0m\]'
    PS1=' \[\e[0;91m\]λ \[\e[0;92m\]~\[\e[0m\] '
else
    #PS1="\[\033[35m\]\t\[\033[m\]-\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
    #PS1="\[\033[m\]|\[\033[1;35m\]\t\[\033[m\]|\[\e[1m\]\[\033[m\]\u\[\e[1;36m\]\[\033[m\]@\[\e[1;36m\]\h\[\033[m\]:\[\e[0m\]\[\e[1;32m\][\W]> \[\e[0m\]"
    #export PS1=" \[\e[00;34m\]λ \W \[\e[0m\]"
    #export PS1=' \[\e[0;96m\]λ \[\e[0m\]\W \[\e[0m\]'
    #PS1=' \[\e[0;96m\]λ \[\e[0;92m\]\W \[\e[0m\]'
    PS1=' \[\e[0;96m\]λ \[\e[0;92m\]~\[\e[0m\] '
    
fi




#export PS1=" \[\e[00;34m\]λ \W \[\e[0m\]"


export LC_ALL=ru_RU.UTF-8
#export LANG=ru_RU.UTF-8
export LANG=C
export LANGUAGE=ru_RU.UTF-8

export LESS='-R --use-color -Dd+r$Du+b'
export LESSHISTFILE=PS1=' \[\e[0;96m\]λ \[\e[0;92m\]~\[\e[0m\]'-
