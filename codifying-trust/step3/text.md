## Variable Types

> ⚠️ If the Katacoda Editor interface does not show the `variables.tf` and `outputs.tf` files, please click the <i class="fa fa-sync"></i> Refresh button.

---

Typing variables guarantees that your code will not execute if the wrong variable type is provided.

In this step, we will carry out two tasks:

1. Add a type identifier to three variables
2. Add a default value to one variable

---

Let's look at the variables we are working with today.

Click `variables.tf`{{open}} to open it.

### Add a type identifier to three variables

Terraform supports various type identifiers.

Pick the right options for the variables:

* `type = bool`{{copy}} for Booleans
* `type = number`{{copy}} for Numbers
* `type = string`{{copy}} for Strings

Copy and paste the type identifiers into the correct variables.

### Add a default value to one variable

Providing (sensible) default values helps you and other maintainers to better understand the code you are using.

Add a default value of `test` to the `environment` variable:

<pre class="file" data-target="clipboard">default     = "test"</pre>

---

After completing these two tasks, execute Terraform:

`terraform apply -auto-approve`{{execute}}

> ⚠️ The `-auto-approve` flag automatically approves Terraform operations. This is not recommended for production settings.
