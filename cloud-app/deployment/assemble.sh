#!/bin/bash

docker tag 238971b38e2 gcr.io/awesome-project/example-image
gcloud docker -- push gcr.io/awesome-project/example-image
