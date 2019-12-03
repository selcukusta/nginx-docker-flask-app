#!/bin/bash
sudo cp -r /vagrant/sample-app/ /tmp/sample-app
cd /tmp/sample-app
sudo docker image build -t selcukusta/flask-app:1.0.0 .
sudo docker container run --name flask_app -d -p 5000:5000 selcukusta/flask-app:1.0.0