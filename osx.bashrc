function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1] /'
}
function show_k8s_context {
    kubectl config current-context
}
#PS1="\[\e[32m\]\$(parse_git_branch)[\$(show_k8s_context)] \[\e[34m\]\W\$ \[\e[m\]"
PS1="\$(parse_git_branch)[\$(show_k8s_context)] \$ "
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

alias g=git
alias k=kubectl
alias d=docker

source <(kubectl completion bash)
