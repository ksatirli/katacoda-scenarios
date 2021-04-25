> ⚠️ If the Katacoda Editor interface does not show the `docker.tf` and `random.tf` files, please click the <i class="fa fa-sync"></i> Refresh button.

---

Commenting your code is a best-practice that pays off, no matter if you are the only person working on your code or if you are part of a team.

In this step, we will carry out three tasks:

1. Document `random` resources
2. Document `docker_image` resource
3. Update `docker_container` resource

---

## Document `random` resource

Start by opening `random.tf`{{open}} and look for the `locals` stanza.

The `pet_name_prefix` local value uses a ternary, and a resource reference.

This code is hard to understand and document the line that is marked as `# DOCUMENT THIS`.

## Document `docker_image` resource

Start by opening `docker.tf`{{open}} and look for the `docker_image` resource.

The `name` attribute references a tag of `main`.

This is not trustworthy and likely to break in the future.

> ❓ How would you make this code trustworthy?

## Document `docker_container` resource

In `docker.tf`{{open}}, look for the `docker_container` resource.

The `name` attribute references a value of `beacon`.

This is not unique and likely to confuse.

We have access to variables and resources we can use to change this.

> ❓ How would you make this name more unique?

Consider using `random_pet.image` and `var.environment`.

---

After completing these three tasks, execute Terraform:

`terraform apply -auto-approve`{{execute}}

The output should look like this:

```text
Outputs:

environment       = "test"
container_ip      = ""
container_command = ""
```

---

When you are ready, click _CONTINUE_ to go to the next step.
