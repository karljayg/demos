#!/bin/bash
# Run this script in the project directory

# Clean containers
docker kill app tom
docker rm app tom

# Build image
echo Building Apache Docker image...
docker build -t app apache

echo Building Tomcat Docker image...
docker build -t tommy tomcat


# Run container
echo Running Apache container...
docker run --name app -p 80:80 -d app


echo Running Tomcat container...
docker run --name tom -p 8888:8080 -d tommy