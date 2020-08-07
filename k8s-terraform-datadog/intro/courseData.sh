#!/bin/sh

TERRAFORM_VERSION="0.12.29"
TERRAFORM_FILE="terraform_${TERRAFORM_VERSION}_linux_amd64.zip"
HELM_FILE="get-helm-3.sh"
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

# install Helm
curl \
  --fail \
  --location \
  --show-error \
  --output "${HELM_FILE}" \
  --silent \
  "https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3" \
&& \
chmod 700 "${HELM_FILE}" \
&& \
./${HELM_FILE} \

# clean up Helm installer
rm \
  --recursive \
  --force \
  ${HELM_FILE}

# initialize Helm
helm \
  init

## add `stable` Helm Charts (this provides `stable/datadog:2.3.42`)
#helm \
#  repo \
#    add "stable" "https://kubernetes-charts.storage.googleapis.com/"

# add `datadog` Helm Charts (this provides `datadog/datadog:2.4.5`)
helm \
  repo \
    add "datadog" "https://helm.datadoghq.com/"

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
