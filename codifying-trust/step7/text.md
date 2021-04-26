As projects evolve, you sometimes need to add extra code and other resources.

In this step, we will carry out one tasks:

1. Add an extra provider

---

### Add an extra provider

For the next part, we need the Docker Provider for Terraform.

Start by (re-)opening `terraform.tf`{{open}} and expand the `terraform` stanza:

<pre class="file" data-target="clipboard">
    # see https://registry.terraform.io/providers/kreuzwerker/docker/2.11.0
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.11.0"
    }
</pre>

Re-initialize Terraform with the `init` command:

`terraform init`{{execute}}

Then, reformat the code using the `fmt` command:

`terraform fmt`{{execute}}

---

When you are ready, click _CONTINUE_ to go to the next step.
