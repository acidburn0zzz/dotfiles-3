#export GOROOT=/usr/local/go
export GOROOT=/Users/jmacd/src/go
export GOROOT_BOOTSTRAP=/Users/jmacd/src/go-darwin-386-bootstrap
export GO15VENDOREXPERIMENT=1

export GOPATH=`$HOME/.gopath`
GOBINFORPATH=$GOPATH/bin
export NODE_PATH=$GOPATH/..

export GIT_PAGER=/bin/cat
export PAGER=/bin/cat

export LIGHTSTEP_HOME=$HOME/src/reslabs

if echo "$PATH" | grep -v "$GOBINFORPATH"; then
    PATH=$PATH:$GOROOT/bin
    PATH=$PATH:$GOBINFORPATH
    PATH=$PATH:$HOME/bin
fi

export PYTHONPATH=/Users/jmacd/src/benchmarks/go/src/github.com/lightstep/lightstep-tracer-python:/Users/jmacd/src/benchmarks/go/src/github.com/opentracing/opentracing-python

source $HOME/.bashrc
source $HOME/src/dotfiles/git.completion

# The next line updates PATH for the Google Cloud SDK.
source '/Users/jmacd/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/jmacd/google-cloud-sdk/completion.bash.inc'

#eval $(docker-machine env default)
