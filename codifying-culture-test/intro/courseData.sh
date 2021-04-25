#!/bin/sh

SCENARIO_REPOSITORY="https://github.com/ksatirli/katacoda-scenarios.git"
SCENARIO_WORKSPACE="/tmp/scenario"
USER_WORKSPACE="/root/"

# add repository key
curl \
  --fail \
  --location \
  --silent \
  --show-error \
  "https://apt.releases.hashicorp.com/gpg" \
  | sudo apt-key add -

# add repository
sudo \
  apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# install Terraform
apt \
  install \
  terraform

# install TFLint
curl \
  --fail \
  --location \
  --silent \
  --show-error \
  "https://raw.githubusercontent.com/terraform-linters/tflint/master/install_linux.sh" \
  | bash

# create user workspace
mkdir \
  -p "${USER_WORKSPACE}"

# clone course code into workspace amd copy relevant files for `step1` to workspace
git \
  clone \
    --depth=1 \
    "${SCENARIO_REPOSITORY}" \
    "${SCENARIO_WORKSPACE}" \
&& \
cp \
  ${SCENARIO_WORKSPACE}/codifying-culture/step1/*.tf "${USER_WORKSPACE}/"

clear
