#!/bin/bash
if $1 ; then
    cp -r /vagrant/sample-app-v2/ /tmp/sample-app
    DOCKER_HOST_PORT=80
    DOCKER_CONTAINER_PORT=80
else
    cp -r /vagrant/sample-app/ /tmp/sample-app
    DOCKER_HOST_PORT=5000
    DOCKER_CONTAINER_PORT=5000
fi
cd /tmp/sample-app
docker image build -t selcukusta/flask-app:1.0.0 .
docker container run --name flask_app -d -p $DOCKER_HOST_PORT:$DOCKER_CONTAINER_PORT selcukusta/flask-app:1.0.0