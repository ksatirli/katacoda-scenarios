## Version Pinning

> ⚠️ If the Katacoda Editor interface does not show the `terraform.tf` file, please click the <i class="fa fa-sync"></i> Refresh button.

---

Pinning versions of the tools you use provide certainty and visibility.

In this step, carry out two tasks:

1.) Add a version identifier (`version`) for the latest version of the `local` Provider.

2.) Add a minimal version requirement for Terraform.

### Add a version identifier for the `local` Provider

The latest version of the `local` provider is `2.1.0`{{copy}}.

Providers can be pinned to a specific version using the `version` attribute:

`      version = "2.1.0"`{{copy}}

### Add a version requirement for Terraform

The latest version of Terraform is `0.15.0`{{copy}}.

Terraform code can be pinned to a specific version using the `required_version` attribute:

`  required_version = "0.15.0"`{{copy}}

Now that we have our providers all set, let's initialize our project with Terraform.

`terraform init`{{execute}}

This step will ensure that you are running the correct version of Terrafor (`0.15.0`) and it will download the `2.1.0` version of the `local` Provider.
