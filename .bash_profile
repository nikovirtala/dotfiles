export GOPATH=$(go env GOPATH)
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:~/bin

export ANSIBLE_NOCOWS=1

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ${HOME}/.docker-functions ]; then
  . ${HOME}/.docker-functions
fi

if [ -f ${HOME}/.other-functions ]; then
  . ${HOME}/.other-functions
fi

export PS1='`echo "${PWD%/*}" | sed -e "s;\(/.\)[^/]*;\1;g"`/${PWD##*/} \$ '

export INFRAKIT_HOME=~/.infrakit
export INFRAKIT_INSTANCE_HYPERKIT_DISCOVERY_HOSTPORT="127.0.0.1:24865"
