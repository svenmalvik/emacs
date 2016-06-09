#!/bin/bash

docker run -it --rm --name emacs -v $HOME:/root -v /var/run/docker.sock:/var/run/docker.sock svenmalvik/emacs $1
