TERRAFORM_VERSION="0.12.29"
TERRAFORM_FILE="terraform_${TERRAFORM_VERSION}_linux_amd64.zip"

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

clear

echo "Ready!"
