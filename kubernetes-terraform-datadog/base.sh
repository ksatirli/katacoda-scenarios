#!/bin/sh

TERRAFORM_VERSION="0.12.29"
TERRAFORM_FILE="terraform_${TERRAFORM_VERSION}_linux_amd64.zip"
SCENARIO_WORKSPACE="/tmp/scenario"
USER_WORKSPACE="/root/workspace"

# install `unzip`
apt-get \
  install \
    --quiet \
    --yes \
    unzip < "/dev/null"

# fetch Terraform archive
curl \
  --remote-name \
  "https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/${TERRAFORM_FILE}"

# unzip Terraform archive and make it accessible in PATH
unzip \
  "${TERRAFORM_FILE}" \
  -d "/usr/local/bin/"

# clean up
rm \
  -rf "${TERRAFORM_FILE}"

# create scenario workspace
mkdir \
  -p "${SCENARIO_WORKSPACE}"

# clone course code into workspace
git \
  clone \
    --depth=1 \
    "https://github.com/ksatirli/katacoda-scenarios.git" \
    "${SCENARIO_WORKSPACE}"

# create user workspace
mkdir \
  -p "${USER_WORKSPACE}"

# copy relevant files to workspace
cp "${SCENARIO_WORKSPACE}/{terraform,variables}.tf" "${USER_WORKSPACE}"
