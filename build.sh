#!/bin/bash
eval $(ssh-agent)
ssh-add ~/.ssh/id_rsa
DOCKER_GID=$(getent group docker | cut -d: -f3)
DOCKER_BUILDKIT=1 docker build --build-arg DOCKER_GID=$DOCKER_GID --ssh default -f Dockerfile . -t pgm:latest
