## Terraform Providers

> ⚠️ If the Katacoda Editor interface does not show the `terraform.tf` and `variables.tf` files, please click the <i class="fa fa-sync"></i> Refresh button.

---

Version pinning virtually guarantees that your code will keep working, even when the Terraform Provider changes in the future.

This makes it easier for future maintainers of this codebase to understand which version of the provider documentation is applicable, as new features get added down the road.

Let's look at the Terraform providers we are setting up today:

> `terraform.tf`{{open}}

Now that we have our providers all set, let's initialize our project with Terraform.

`terraform init`{{execute}}

After downloading the Terraform providers with the `terraform init` command, you'll be able to
inspect the versions that were downloaded, and the machine architecture you're using (ex. `linux_amd64`).

`tree .terraform`{{execute}}
