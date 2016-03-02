export GOROOT=/usr/local/go            
export GOPATH=$HOME/src/reslabs/go

GOBIN=$GOPATH/bin

export GIT_PAGER=
export PAGER=

if echo "$PATH" | grep -v "$GOBIN"; then
    PATH=$PATH:$GOBIN
    PATH=$PATH:$HOME/bin
fi
