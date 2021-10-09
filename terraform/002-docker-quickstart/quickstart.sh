#!/bin/zsh

echo running quickstart
echo open -a Docker
open -a Docker

echo cd learn-terraform-docker-container
cd learn-terraform-docker-container

echo main.tf
cat main.tf

echo terraform init
terraform init

echo terraform apply
terraform apply


echo docker ps
echo curl localhost:8000
docker ps
curl localhost:8000

echo cleanup with "terraform destroy"
