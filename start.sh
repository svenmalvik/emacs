#!/bin/bash

docker run -it --rm --name emacs \
  -e HOSTNAME=$HOSTNAME \
  -v $HOME/.ssh:/root/.ssh \
  -v /var/projects:/home/projects \
  -v /var/run/docker.sock:/var/run/docker.sock \
  svenmalvik/emacs $1
