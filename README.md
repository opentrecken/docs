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