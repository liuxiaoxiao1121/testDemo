#!/bin/sh
tag=$1
if [ -z $tag ]
then
   read -p "image tag is NULL, please input: " tag
fi
sudo docker build -f tools/docker/Dockerfile-dev --net host -t "reg.docker.alibaba-inc.com/atorch/atorch-dev:$tag" ./
