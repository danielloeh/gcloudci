#!/bin/bash 

# Spin up test cluster
gcloud container clusters create stage-test --zone=europe-west2-a --machine-type=n1-standard-1 --num-nodes=1