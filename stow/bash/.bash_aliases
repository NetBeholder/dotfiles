alias ..='cd ..'
alias ...='cd ../..'

alias ls='ls -lah --color=auto'
alias grep='grep --color=auto'
alias src='cd ~/.local/src'
xs () 
{ 
    xpkg -a | fzf -m --preview 'xq {1}' --preview-window=right:66%:wrap | xargs -ro xi
}
function _dotnet_bash_complete()
{
  local cur="${COMP_WORDS[COMP_CWORD]}" IFS=$'\n' # On Windows you may need to use use IFS=$'\r\n'
  local candidates

  read -d '' -ra candidates < <(dotnet complete --position "${COMP_POINT}" "${COMP_LINE}" 2>/dev/null)

  read -d '' -ra COMPREPLY < <(compgen -W "${candidates[*]:-}" -- "$cur")
}
#lf() {
#    tmp="$(mktemp)"
#    command lfub -last-dir-path="$tmp" "$@"
#    cd "$(cat "$tmp")"
#    rm -f "$tmp"
#}
#
