if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

alias gcloud='docker run --rm -it -v ~/.config:/root/.config nikovirtala/gcloud:latest'

myip ()
  {
    local ip=$(curl -s https://api.ipify.org)
    echo $ip
  }
