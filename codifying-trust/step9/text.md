> ⚠️ If the Katacoda Editor interface does not show the `terraform-test` directory, please click the <i class="fa fa-sync"></i> Refresh button.

---

Terraform `0.15` added support for the `terraform test` command to allow for better module testing.

This feature is currently _very_ experimental, but deserves a shout-out nonetheless.

In this step, we will carry out two tasks:

1. Initialize a module
2. Run `terraform test`

---

### Initialize a module

Let's start by changing into the module directory:

`cd /workspace/terraform-test`{{execute}}

Next, let's see what the module does:

`terraform apply -auto-approve`{{execute}}

The output should contain commonly used HTTP headers.

### Run `terraform test`

From the root of the module directory (`/workspace/terraform-test`), execute the `test` command:

`terraform test`{{execute}}

---

When you are ready, click _CONTINUE_ to go to the next step.
