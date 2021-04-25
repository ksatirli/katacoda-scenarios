Adding Validation to variables is useful to create checks  a better understanding of what a variable does.

In this step, we will carry out three tasks:

1. Add numeric range validation to one variable
2. Add a string validation to one variable

---

Let's look at the variables file again.

Click `variables.tf`{{open}} to open it.

### Add numeric range validation to one variable

The range of `pet_name_length` should ideally be between _1_ and _3_ words to account for character limits.

Let's set up a validation for this:

<pre class="file" data-target="clipboard">
  validation {
    condition     = length(var.pet_name_length) >= 1 && length(var.pet_name_length) <= 3
    error_message = "The range of `pet_name_length` must be between 1 and 3."
  }
</pre>

### Add string validation to one variable

Environment names are often important identifiers when it comes to billing and support.

For this project, we want to support three possible environment names:

* `dev` for _development_ environments
* `tst` for _testing_ environments
* `prd` for _production_ environments

Let's set up a validation for this:

<pre class="file" data-target="clipboard">
  validation {
    condition     = contains(["dev", "tst", "prd"], var.environment)
    error_message = "The allowed environment identifiers are: `dev`, `tst`, and `prd`."
  }
</pre>

---

After completing this task, execute Terraform again:

`terraform apply -auto-approve`{{execute}}

❓ What does the output look like?
