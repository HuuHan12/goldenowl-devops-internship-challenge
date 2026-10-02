#!/bin/bash
yum update -y
yum install -y docker
systemctl start docker
systemctl enable docker

usermod -a -G docker ec2-user

docker pull ${docker_image}
docker run -d --restart always -p ${app_port}:${app_port} --name app ${docker_image}
