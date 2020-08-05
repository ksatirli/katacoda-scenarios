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
    "unzip"

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
  --recursive \
  --force \
  ${TERRAFORM_FILE}

# create user workspace
mkdir \
  -p ${USER_WORKSPACE}

# clone course code into workspace amd copy relevant files for `step1` to workspace
git \
  clone \
    --depth=1 \
    "https://github.com/ksatirli/katacoda-scenarios.git" \
    "${SCENARIO_WORKSPACE}" \

cp \
  ${SCENARIO_WORKSPACE}/k8s-terraform-datadog/step1/*.tf "${USER_WORKSPACE}"