#!/bin/bash

docker stop $(docker ps  -q --filter ancestor=danielloeh/cloud-app) 
docker rm  $(docker ps -a  -q --filter ancestor=danielloeh/cloud-app)

(cd .. && docker build -t danielloeh/cloud-app .)
docker create  danielloeh/cloud-app  --name cloud-app
docker run -p 8080:3000 -d danielloeh/cloud-app  
