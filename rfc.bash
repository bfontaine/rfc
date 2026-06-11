__punch_complete() {
  local cur=$2
  if [ $COMP_CWORD -eq 1 ]; then
    COMPREPLY=( $(compgen -W "--version --help search list sync clear $(rfc list | cut -d ':' -f 1 | cut -d ' ' -f 2)" -- $cur) )
  fi
} &&
complete -F __punch_complete rfc
