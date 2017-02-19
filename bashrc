# set GOPATH
export GOPATH=$HOME/Workspace/go
export PATH=$PATH:$GOPATH/bin:/Users/terryz/Workspace/go/src/k8s.io/kubernetes/third_party/etcd:~/bin

# set key board mapping
set -o vi

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

alias vim='/usr/local/bin/vim'
