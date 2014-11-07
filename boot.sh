#!/bin/sh
shellinaboxd \
	-t\
	--css style.css \
	-f beep.wav:/dev/null \
	-s '/YOUR_PATH_HERE:root:root:/:/bin/zsh /do.zsh tcp://DOCKER.HOST:2375' 

# Add more -s lines to add more hosts.
