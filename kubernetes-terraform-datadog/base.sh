#!/bin/sh

TERRAFORM_VERSION="0.12.29"
TERRAFORM_FILE="terraform_${TERRAFORM_VERSION}_linux_amd64.zip"
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

# create workspace
mkdir \
  -p "${USER_WORKSPACE}"

# clone course code into workspace
git \
  clone \
    --depth=1 \
    "https://github.com/ksatirli/katacoda-scenarios.git" \
    "${USER_WORKSPACE}"
