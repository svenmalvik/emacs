#!/bin/bash
docker run -it --rm \
  -v /var/projects:/home \
  -v /var/run/docker.sock:/var/run/docker.sock \
  svenmalvik/emacs $1
