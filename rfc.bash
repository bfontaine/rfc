__rfc_complete() {
  local cur=$2
  if [ $COMP_CWORD -eq 1 ]; then
    COMPREPLY=( $(compgen -W "--version --help search list sync clear $(rfc list | grep -oP '(?<=^RFC )[^:]*')" -- $cur) )
  fi
} &&
complete -F __rfc_complete rfc
