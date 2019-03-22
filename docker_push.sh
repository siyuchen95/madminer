#!/bin/bash
echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin  docker.io
export REPO=madminertool/docker-madminer
docker build -f Dockerfile -t $REPO .
sudo docker push $REPO
