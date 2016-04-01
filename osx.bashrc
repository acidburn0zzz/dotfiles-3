function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1] /'
}
PS1="\[\e[32m\]\$(parse_git_branch)\[\e[34m\]\W\$ \[\e[m\]"
export PS1


function cd() {
  builtin cd $@ &&
  export GOPATH="$(
    ( while [[ $PWD != / && $(basename $PWD) != go ]]; do
        cd ..
      done
      if [[ $PWD == / ]]; then
        echo $GOPATH
      else
        echo $PWD
      fi
    ))"
}
