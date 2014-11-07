#!/bin/sh
shellinaboxd \
	-t\
	--css style.css \
	-f beep.wav:/dev/null \
	-s '/:root:root:/:/bin/zsh /do.zsh '$HOST \

#	-s '/YOUR_PATH_HERE:root:root:/:/bin/zsh /do.zsh tcp://DOCKER.HOST:2375' 
#	-s '/:root:root:/:/bin/zsh /do.zsh tcp://10.0.42.1:2375'
# Add more -s lines to add more hosts.
