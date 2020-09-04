#!/bin/sh

# clean up `tfplan` file from previous step
rm \
  --recursive \
  --force \
  "/root/step11.tfplan"

# copy relevant files to workspace
cp /tmp/scenario/k8s-terraform-datadog/step12/*.tf "/root/"
