export GOPATH=$(go env GOPATH)
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$PATH:~/bin

export ANSIBLE_NOCOWS=1

if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

myip ()
  {
    local ip=$(curl -s https://api.ipify.org)
    echo $ip
  }

alias awscli='docker run --rm -it -v ~/.aws:/root/.aws nikovirtala/awscli:latest'
alias aws-shell='docker run --rm -it -v ~/.aws:/root/.aws nikovirtala/aws-shell:latest'
alias cfssl='docker run --rm -v $(pwd):/root nikovirtala/cfssl:latest'
alias cfssljson='docker run --rm -i -v $(pwd):/root nikovirtala/cfssljson:latest'
alias gcloud='docker run --rm -it -v ~/.config:/root/.config -v ~/.ssh/:/root/.ssh google/cloud-sdk:alpine gcloud'
alias packer='docker run --rm -it hashicorp/packer:light'
alias packer-full='docker run --rm -it hashicorp/packer:full'
# alias terraform='docker run --rm -it -v ~/.aws:/root/.aws -v ~/terraform:/root/terraform hashicorp/terraform:light'
# alias terraform-full='docker run --rm -it -v ~/.aws:/root/.aws -v ~/terraform:/root/terraform hashicorp/terraform:full'
alias watch='watch -n 1'
