export GOROOT=/usr/local/go
export GO15VENDOREXPERIMENT=1

export GOPATH=`$HOME/.gopath`
export GOBIN=$GOPATH/bin
export NODE_PATH=$GOPATH/..

export GIT_PAGER=
export PAGER=

if echo "$PATH" | grep -v "$GOBIN"; then
    PATH=$PATH:$GOBIN
    PATH=$PATH:$HOME/bin
fi

source $HOME/.bashrc
