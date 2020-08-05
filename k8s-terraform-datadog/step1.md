# Verify local installations

`terraform version`{{execute}}

Copy the files for the first step:

`cp "/tmp/scenario/k8s-terraform-datadog/step1/*.tf" "/root/workspace/"`{{execute}}

Initialize the project:

`terraform init`{{execute}}

Apply the configuration. You'll be asked to confirm by typing "yes", and then the name of an animal will be printed as an output.

`terraform apply`{{execute}}
