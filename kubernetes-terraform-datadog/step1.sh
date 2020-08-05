#!/bin/sh

# load configuration
source config.sh

# copy relevant files to workspace
cp "${SCENARIO_WORKSPACE}/{terraform,variables}.tf" "${USER_WORKSPACE"
