#export CXX=clang++
#export CC=clang

PATH="/volume/home/jmacd/src/go/bin:$PATH:$HOME/bin"

GOPATH="/home/jmacd/src/convoy:/home/jmacd/src/xdelta-git/xdelta3/go"
export GOPATH

EDITOR=vi
export EDITOR

BOOST_ROOT=/home/jmacd/src/boost_1_45_0
export BOOST_ROOT

export LUABIND_INCLUDE_DIR
LUABIND_INCLUDE_DIR=/home/jmacd/include
export LUABIND_LIBRARY
LUABIND_LIBRARY=/home/jmacd/lib

CPPFLAGS=-I/home/jmacd/include
export CPPFLAGS
LDFLAGS=-L/home/jmacd/lib
export LDFLAGS

CLOUDSDK_PYTHON=python2.7
export CLOUDSDK_PYTHON

# The next line updates PATH for the Google Cloud SDK.
source '/volume/home/jmacd/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/volume/home/jmacd/google-cloud-sdk/completion.bash.inc'
