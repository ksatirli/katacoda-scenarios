#!/bin/sh

SCENARIO_WORKSPACE="/tmp/scenario"
USER_WORKSPACE="/root/workspace"

# copy relevant files to workspace
cp "${SCENARIO_WORKSPACE}/{terraform,variables}.tf" "${USER_WORKSPACE"
