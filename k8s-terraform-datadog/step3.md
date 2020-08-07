## Preparing Datadog Variables

> ⚠️ If the Katacoda Editor interface does not show the `datadog.tf` and `datadog_variables.tf` files, please click the <i class="fa fa-sync"></i> Refresh button.

---

We have initialized Terraform, specified the providers we want to use, and now it's time to enter in
some additional information using Terraform variables.

Let's open up the variables file that contains all our Datadog information:

> `variables_datadog.tf`{{open}}

Do you see that `datadog_user_email` block of code? Let's update that so it no longer says
`<CHANGE ME>` and instead, let's put in an email address.

This email address will be used to create a second user in your Datadog Organization.
