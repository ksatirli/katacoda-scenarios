## Version Pinning

> ⚠️ If the Katacoda Editor interface does not show the `terraform.tf` file, please click the <i class="fa fa-sync"></i> Refresh button.

---

Version pinning virtually guarantees that your code will keep working, even when the underlying tools release new versions you haven't tested against.

This makes it easier for future maintainers of this codebase to understand which version of the documentation is applicable.

In this step, we will carry out two tasks:

1.) Add a version identifier for the latest version of the `local` Provider.

2.) Add a minimal version requirement for Terraform.

---

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



-------
Let's look at the Terraform providers we are setting up today:

> `terraform.tf`{{open}}

Now that we have our providers all set, let's initialize our project with Terraform.

`terraform init`{{execute}}

After downloading the Terraform providers with the `terraform init` command, you'll be able to
inspect the versions that were downloaded, and the machine architecture you're using (ex. `linux_amd64`).

`tree .terraform`{{execute}}
