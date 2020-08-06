# Terraform lifecycle

`terraform plan -out="step4.tfplan"`{{execute}}

---

**TODO: Does this flow work here, or should we break it up?**

Let's ensure that our Terraform code is formatted correctly with the `terraform fmt` command.

`terraform fmt`{{execute}}

That code is looking good! Now, let's validate our code to make sure we don't have any syntax issues.

`terraform validate`{{execute}}

Excellent! Finally, let's run `terraform plan` to see what objects we'll be deploying today.

