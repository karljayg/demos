#!/bin/bash
# Run this script in the project directory

docker kill app
docker rm app

docker rmi -f app

# build
docker build -t app .


# run
docker run --name app -p 80:80 -d app
