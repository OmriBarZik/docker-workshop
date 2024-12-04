#!/bin/bash

## =====================
## Docker Commands
## =====================

# Build your image and tag it
docker build --tag yourname/yourimage .

# Build your image with costume dockerfile
docker build --file Dockerfile .

# Run your contianer with a name
docker run --name yourcontainer yourname/yourimage

# Run your contianer with a port
docker run --publish 8080:8080 yourname/yourimage

# Run your contianer in interactive mode
docker run -it yourname/yourimage

# Run your contianer in interactive mode with bash
docker run -it yourname/yourimage bash

# Run your contianer with a volume
docker run -v /path/to/your/volume:/path/to/your/volume yourname/yourimage

# Run your contianer with a local volume
docker run -v "$PWD"/dir:/path/to/your/volume yourname/yourimage

# Run your contianer with environment variables
docker run --env VAR1=value1 --env VAR2=value2 yourname/yourimage

# Run your contianer and remove it after it stops
docker run --rm yourname/yourimage

# Run your contianer in the background
docker run --detach yourname/yourimage


## =====================
## Dockerfile Commands
## =====================

RUN # Run commands in the container

COPY # Copy files from the host to the container

WORKDIR # Set the working directory in the container

ENV # Set environment variables in the container

CMD # Run this commands when the container starts