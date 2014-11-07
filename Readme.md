# About
DoSh is a simple, web-based shell for Docker that only runs the *docker* command and nothing else. Supports autocomplete for docker commands. DoSh allows you to use docker from a browser, works as if you are on localhost, and can instantly be used to give docker to the people

# Easy Install

Enable the docker HTTP/TCP interface (see [docs.docker.com](https://docs.docker.com/articles/basics/#bind-docker-to-another-hostport-or-a-unix-socket) for a guide on that). Listen on the docker IP (defaults to 10.0.42.1) port 2375. Then run

`docker run -d -p 4200:4200 meledin/dosh`

The default installation runs with exactly one Docker host (the one in which the container is running). You can change the docker endpoint using the `host` environment variable like so

`docker run -d -p 4200:4200 -e "host=tcp://127.0.0.1:2375" meledin/dosh`

# Custom Installation

1. Clone the repo `git clone https://github.com/meledin/dosh.git`

2. Enable the docker HTTP/TCP interface (see [docs.docker.com](https://docs.docker.com/articles/basics/#bind-docker-to-another-hostport-or-a-unix-socket) for a guide on that).

3. Edit the `boot.sh` file. Add any number of -s lines as needed, modifying the `/YOUR_PATH_HERE` and `DOCKER.HOST:2375` parts to fit your environment.

4. `docker build -t dosh .`

5. `docker run -d -p 4200:4200 dosh`

6. Browse to http://127.0.0.1:4200/PATH (substituting appropriate values) and enjoy

# Security
There is none. This is strictly an internal plaything. Do not expose it to the internet if you know what's good for you.
