function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1] /'
}
PS1="\[\e[32m\]\$(parse_git_branch)\[\e[34m\]\W\$ \[\e[m\]"
export PS1
