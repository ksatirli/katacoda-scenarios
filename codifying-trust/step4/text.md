> ⚠️ If the Katacoda Editor interface does not show the `variables.tf` and `outputs.tf` files, please click the <i class="fa fa-sync"></i> Refresh button.

---

Adding Descriptions to variables and outputs is useful to build

In this step, we will carry out three tasks:

1. Add a description to an output
2. Add a default value to one variable

---

Let's look at the variables we are working with today.

Click `outputs.tf`{{open}} to open it.

### Add a description to an output

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
