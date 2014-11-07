# About
DoSh is a simple, web-based shell for Docker that only runs the *docker* command and nothing else. Supports autocomplete for docker commands. DoSh allows you to use docker from a browser, works as if you are on localhost, and can instantly be used to give docker to the people

# Installation

1. Clone the repo `git clone https://github.com/meledin/dosh.git`

2. Enable the docker HTTP/TCP interface (see [docs.docker.com](https://docs.docker.com/articles/basics/#bind-docker-to-another-hostport-or-a-unix-socket) for a guide on that).

3. Edit the `boot.sh` file. Add any number of -s lines as needed, modifying the `/YOUR_PATH_HERE` and `DOCKER.HOST:2375` parts to fit your environment.

4. `docker build -t dosh .`

5. `docker run -d -p 4200:4200 dosh`

6. Browse to http://127.0.0.1:4200/PATH (substituting appropriate values) and enjoy

# Security
There is none. This is strictly an internal plaything. Do not expose it to the internet if you know what's good for you.
