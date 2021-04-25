> ⚠️ If the Katacoda Editor interface does not show the `variables.tf` and `outputs.tf` files, please click the <i class="fa fa-sync"></i> Refresh button.

---

As with variables, adding descriptions to outputs is useful to build a better understanding of what is being presented.

In this step, we will carry out one task:

1. Add a description to an output

---

Let's look at the outputs we are working with today.

Click `outputs.tf`{{open}} to open it.

### Add a description to an output

Add a description to the `environment` output.

Descriptions can be added with the `description` attribute:

<pre class="file" data-target="clipboard">description     = "Environment"</pre>

---

After completing these two tasks, execute Terraform:

`terraform apply -auto-approve`{{execute}}
