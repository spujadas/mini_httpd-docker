# mini_httpd Docker image

[mini_httpd](http://www.acme.com/software/mini_httpd/) is a small HTTP server.

### Contents

 - Usage
	 - Start a container with Docker
	 - Start a container with Docker Compose
 - Build
	 - Build with Docker
	 - Build with Docker Compose
 - About

## Usage

In the instructions that follow, replace `<home-directory>` with the path of the local directory you want to serve content from, and `<http-port>` with the HTTP port you want the HTTP server to serve content to (e.g. `80` for the standard HTTP port if not already in use on the host).

### Start a container with Docker

	$ sudo docker run -t -v <home-directory>:/var/www/localhost/htdocs -p <http-port>:80

### Start a container with Docker Compose

Add the following lines in an existing or a new `docker-compose.yml` file:

	minihttpd:
	  image: sebp/mini_httpd
	  volumes:
	    - <home-directory>:/var/www/localhost/htdocs
	  ports:
	    - "<http-port>:80"

Then start a mini_httpd container with:

	$ sudo docker-compose up minihttpd


## Build

First clone or download the [spujadas/mini_httpd-docker](https://github.com/spujadas/mini_httpd-docker) GitHub repository, open a shell in the newly created `mini_httpd-docker` directory, then build the image and run a container using Docker or Docker Compose, as explained below.

### Build with Docker

This command will build the image:

	$ sudo docker build .
	...	
	Successfully built c25252e8e844

### Build with Docker Compose

Build the image with this command:

	$ sudo docker-compose build

## About

Written by [Sébastien Pujadas](http://pujadas.net), released under the [MIT license](http://opensource.org/licenses/MIT).
