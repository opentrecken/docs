# OpenTrecken Docs

this is the projects documentation

You will find the source of the doc file in [docs](docs/).

## Run local

To run this docs locally:

```bash
# clone the repository
git clone https://github.com/opentrecken/docs.git

# enter the new directory
cd docs

# [optional] create a new python environment
virtualenv env

# [optional] activate the new python environment
. env/bin/activate

# install the dependencies for mkdocs
pip install -r requirements.txt
```

With that done you can now start a the dev-server of mkdocs with a auto-reloading live page:

```bash
# to start the project buildin webserver
# [-a 0.0.0.0:7777 to specify a non standart port ]
mkdocs serve
```

or render a static version to the `./site/` directory:

```bash
# render a static version to docs/
mkdocs build
```

## Run the prebuild docker container 

This repo builds containers with github Actions to a Docker image for each newely created tag that matches the string "v*" (like v0.1.0).

For each new tag in the repo the container also get pushed to the docker tag `latest`.

The container gets build for `linux/amd64`, `linux/arm64`, `linux/arm`.

To run this prebuild latest version use docker-compose.yml in the root folder of this repo.

```bash
docker-compose up -d 
```

This pulls the container from github and starts it. 
The Webserver is avaiable at [http://locahost:4209](http://localhost:4209)

As standalone container the container can be started with 

```bash
docker run --rm -p 4209:80  ghcr.io/opentrecken/docs:latest
```

## Build a docker container

To build a local container for your personal needs use docker-compose to build a new container with:

```bash
docker-compose build
```

## Run container with docker-compose

To start a local copy of the container you can clone this repo and use docker-compose to build and start the container:

```bash
docker-compose up -d --build
```

This will first build the container from the source code in this repo and than start it.
The server is per default avaiable at [http://locahost:4209](http://localhost:4209).

# About

opentrecken mean 'aufziehen' in german. To grow something up.