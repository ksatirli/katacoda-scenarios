#!/bin/sh

# change into workspace directory
cd /workspace

# helper function to allow easier copying of step-specific files
kccopy() {
  cp /tmp/scenario/codifying-trust/step${1}/*.tf /workspace/
}

clear
