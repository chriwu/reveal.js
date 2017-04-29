#!/bin/bash

set -e

sudo /opt/google-cloud-sdk/bin/gcloud docker -- push eu.gcr.io/${PROJECT_NAME}/${IMAGE_NAME}:$CIRCLE_SHA1
sudo chown -R ubuntu:ubuntu /home/ubuntu/.kube
echo Pushed to GCR

kubectl set image deployment/demo demo=eu.gcr.io/${PROJECT_NAME}/${IMAGE_NAME}:$CIRCLE_SHA1