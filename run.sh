#!/bin/bash
docker run -itd \
	-v ~/.ssh:/root/.ssh \
	-v ~/.aws:/root/.aws \
	-v ~/.vim:/root/.vim \
	-v ~/.vimrc:/root/.vimrc \
	-v ~/.git:/root/.git \
	-v ~/.gitconfig:/root/.gitconfig \
	-v $PWD:/root/code \
	-v /var/run/docker.sock:/var/run/docker.sock \
	-v /tmp/.X11-unix:/tmp/.X11-unix:rw \
	-e DISPLAY=$DISPLAY \
	-e _JAVA_AWT_WM_NONREPARENTING=1 \
	--name pgm --privileged --net=host pgm:latest bash

