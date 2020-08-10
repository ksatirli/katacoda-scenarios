## Creating An Extra Datadog User

> ⚠️ If the Katacoda Editor interface does not show the `datadog_users.tf` file, please click the <i class="fa fa-sync"></i> Refresh button.

---

If you would like to create an additional Datadog user, you can add them in the file we edited earlier:

> `datadog_users.tf`{{open}}

Once you have any user(s) added, let's run the following when you're ready:

`terraform plan -out="step12.tfplan"`{{execute}}

`terraform apply "step12.tfplan"`{{execute}}

Let's have a look at this in the list of [Datadog Users](https://app.datadoghq.com/access/users).
