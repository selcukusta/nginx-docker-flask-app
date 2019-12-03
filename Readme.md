# Using NGINX Reverse Proxy to serve Dockerized Python Flask Application

## Prerequests

- `Virtualbox`

- `Vagrant`

### Running

```bash
# Provisioning
vagrant up

# Request
curl http://172.81.81.200

# Response
# Hello World!
```

### Notes

| ASSET                           | DESCRIPTION                                        |
| ------------------------------- | -------------------------------------------------- |
| `/configurations/nginx/default` | Reverse proxy configurations serve the application |
| `/sample-app`                   | Basic Flask application source code and Dockerfile |
| `/scripts/install-docker.sh`    | How to install Docker on Ubuntu 18.04              |
| `/scripts/install-nginx.sh`     | How to install NGINX on Ubuntu 18.04               |
| `/scripts/docker-build-run.sh`  | Build custom flask application image and run it    |
