> ⚠️ If the Katacoda Editor interface does not show the `terraform.tf` file, please click the <i class="fa fa-sync"></i> Refresh button.

---

Version pinning virtually guarantees that your code will keep working, even when the underlying tools release new versions you haven't tested against.

This makes it easier for future maintainers of this codebase to understand which version of the documentation is applicable.

In this step, we will carry out two tasks:

1. Add a version identifier for the `random` Provider
2. Add a version requirement for Terraform

---

Let's look at the Terraform providers we are setting up today.

Click `terraform.tf`{{open}} to open it.

### Add a version identifier for the `random` Provider

The latest version of the `random` provider is `3.1.0`{{copy}}.

Providers can be pinned to a specific version using the `version` attribute:

<pre class="file" data-target="clipboard">      version = "3.1.0"</pre>

### Add a version requirement for Terraform.

The latest version of Terraform is `0.15.0`{{copy}}.

Terraform code can be pinned to a specific version using the `required_version` attribute:

<pre class="file" data-target="clipboard">  required_version = "0.15.0"</pre>

### Initialize Terraform

Now we have our providers all set, let's initialize our project with Terraform.

`terraform init`{{execute}}

This step will ensure that you are running the correct version of Terraform (`0.15.0`), and it will download the `3.1.0` version of the `random` Provider.

Recent versions of Terraform added support for a lock file: `.terraform.lock.hcl`{{open}}

This file is maintained automatically by `terraform init`.

---

After downloading the Terraform providers with the `terraform init` command, you'll be able to
inspect the versions that were downloaded, and the machine architecture you're using (ex. `linux_amd64`).

`tree .terraform`{{execute}}
