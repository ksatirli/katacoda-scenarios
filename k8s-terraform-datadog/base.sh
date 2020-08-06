#!/bin/sh

TERRAFORM_VERSION="0.12.29"
TERRAFORM_FILE="terraform_${TERRAFORM_VERSION}_linux_amd64.zip"
SCENARIO_REPOSITORY="https://github.com/ksatirli/katacoda-scenarios.git"
SCENARIO_WORKSPACE="/tmp/scenario"
USER_WORKSPACE="/root/"

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
    "${SCENARIO_REPOSITORY}" \
    "${SCENARIO_WORKSPACE}" \
&& \
cp \
  ${SCENARIO_WORKSPACE}/k8s-terraform-datadog/step1/*.tf "${USER_WORKSPACE}/"

# make Datadog API credentials available
export TF_VAR_datadog_api_key="TODO${DD_API_KEY}"
export TF_VAR_datadog_app_key="TODO${DD_APP_KEY}"
