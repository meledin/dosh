#!/usr/bin/zsh
echo "Welcome to the Docker Shell (DoSh)"
echo "The docker command is implicit. You are connected to $1."

fc -p -a

autoload -Uz compinit
compinit
zmodload zsh/parameter
autoload +X _complete
functions[_original_complete]=$functions[_complete]

_complete () {

       words=(docker $words)
[[ $BUFFER == *" " ]] && words=($words '')
[[ $BUFFER == "" ]] && words=(docker '')
        CURRENT=$CURRENT+1
       compstate[command]="docker"
  unset 'compstate[vared]'
  _original_complete "$@"
}
fc -p
export DOCKER_HOST=$1
while true; do
        docker=''
        vared -e -h -p "> " docker
        docker -H=$1 ${=docker}
done
