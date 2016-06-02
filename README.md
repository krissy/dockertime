# Dockertime

A test playground for Docker practice.

Born at a workshop by [@codebar](http://twitter.com/codebar) and [@equalexperts](http://twitter.com/equalexperts).

## Prerequisites

* A [GitHub](http://github.com) account
* A [Docker Hub](http://hub.docker.com) account
* [Ruby](https://www.ruby-lang.org/en/documentation/installation/) (version 2 and up) installed
* The [Bundler](http://bundler.com) gem installed
* [Docker](https://docs.docker.com/engine/installation/) installed

## Steps to create your own

1. **Create a new "automated build" repository in [Docker Hub](http://hub.docker.com)**:  This option can be found under the Create dropdown. Link it to your GitHub account when prompted.
2. **Enable automatic Docker image builds whenever you commit (optional)**: In your GitHub repo settings, add a webhook to Docker (browse the Add Service dropdown). If you don't enable this, you can still trigger Docker builds through the docker hub build settings page.
3. **Create and configure your Dockerfile**: Add a `Dockerfile` to the root directory of your app configured to your custom build settings and push this to GitHub. In [Docker Hub](http://hub.docker.com)'s Build Settings, set the location of your Dockerfile. You can click `Trigger` on the same screen to test your build, and see progress in the Build Details section.

## Run this dockerized app locally

1. Start the Docker Quickstart Terminal (install as part of Docker Toolbox)
2. **Pull down and run the image:**

		docker run -p 8080:8080 krissy/dockertime

	*NB: the -p binds the ports from host to container, there are other ways to deal with EXPOSE and port binding - a decent article is [here](https://www.ctl.io/developers/blog/post/docker-networking-rules/)*

3. **Test your running app:**

	In a new Quickstart Terminal, find the IP of the docker host virtual machine:

		docker-machine ip

	Voila! Visit your app at `http://{your-docker-host-IP}:8080`

4. **Some other commands:**

	Display running containers:

		docker ps

	Display all running or stopped containers:

		docker ps -a

	Stop/start/restart:

		docker [stop/start/restart] <container id or name>

	Remove a stopped container instance:

		docker rm <container id or name>

	View logs:

		docker logs <container id or name>

	View detailed info:

		docker inspect <container id or name>

	View locally cached images:

		docker images
