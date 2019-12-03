#!/bin/bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

sudo apt-get update
sudo apt-get install -y apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

apt-cache policy docker-ce
sudo apt-get install -y docker-ce

sudo tee /etc/docker/daemon.json  <<EOF
{
  "features": {
    "buildkit": true
  }
}
EOF

sudo systemctl enable docker
sudo systemctl restart docker