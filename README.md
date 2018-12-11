# docker-launcher
This repo contains a wrapper to run a container but before ensure the image has been deleted

# Building the container
docker build -t docker-launcher:latest .

# Running this container
docker run -v ~/.aws:/root/.aws -v /var/run/docker.sock:/var/run/docker.sock docker-launcher:latest <<docker arguments>>

#Map docker credentials (requires previous login)
Add the following argument to the container: ~/.docker:/root/.docker

#Map aws credentials
-v ~/.aws:/root/.aws

Full Example:
docker run -v ~/.docker:/root/.docker -v ~/.aws:/root/.aws -v /var/run/docker.sock:/var/run/docker.sock docker-launcher:4 run 736692106039.dkr.ecr.us-east-1.amazonaws.com/reporting-attribution:custom_latest
