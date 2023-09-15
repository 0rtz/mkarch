0="${ZERO:-${${0:#$ZSH_ARGZERO}:-${(%):-%N}}}"
0="${${(M)0:#/*}:-$PWD/$0}"

if [[ ${zsh_loaded_plugins[-1]} != */mkarch && -z ${fpath[(r)${0:h}/functions]} ]] {
    fpath+=( "${0:h}/functions" )
}

autoload -Uz mkarch
