if [ -z "${GOPATH}" ]; then
	export GOROOT=/Users/jmacd/src/go
	export GOPATH=`$HOME/.gopath`
fi

export NODE_PATH=$GOPATH/..
export GIT_PAGER=/bin/cat
export PAGER=/bin/cat

export LIGHTSTEP_HOME=$HOME/src/reslabs

if echo "$PATH" | grep -v "$GOPATH/bin"; then
    PATH=$PATH:$GOROOT/bin
    PATH=$PATH:$GOPATH/bin
fi

if echo "$PATH" | grep -v "$HOME/bin"; then
    PATH=$PATH:$HOME/bin
fi

if echo "$PATH" | grep -v "$HOME/src/go/bin"; then
    PATH=$PATH:$HOME/src/go/bin
fi

export PYTHONPATH=/Users/jmacd/src/benchmarks/go/src/github.com/lightstep/lightstep-tracer-python:/Users/jmacd/src/benchmarks/go/src/github.com/opentracing/opentracing-python

source $HOME/.bashrc
source $HOME/src/dotfiles/git.completion

# The next line updates PATH for the Google Cloud SDK.
source '/Users/jmacd/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/Users/jmacd/google-cloud-sdk/completion.bash.inc'

eval $(docker-machine env default)

# From bc’s bash_profile:
#   'I love Java!'
export JAVA_HOME=$(/usr/libexec/java_home)

export PROJECT_ID="lightstep-dev"
