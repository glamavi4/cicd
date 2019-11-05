#!/bin/sh
docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)
docker build -t cicd-buzz .
docker run -d -p 5000:5000 --rm cicd-buzz
