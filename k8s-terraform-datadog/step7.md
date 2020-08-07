## Installing the Helm Chart for Datadog

> ⚠️ If the Katacoda Editor interface does not show the `helm_datadog.tf` file, please click the <i class="fa fa-sync"></i> Refresh button.

---

Now, I’m not sure if you noticed, but we have a pretty advanced app that we just deployed.

We want to ensure that we’re monitoring beacon as soon as we can after the application has been
deployed, so that we can avoid any angry calls from our users.

For this, we will want to use the Helm provider, which allows Terraform to interface with the system and deploy charts.

Let's open the Terraform file and see how we're setting up the Datadog Agent chart before we deploy it:

> `helm_datadog.tf`{{open}}

Alright! It's time to deploy our Datadog Helm chart. Let's plan and apply accordingly.

`terraform plan -out="step7.tfplan"`{{execute}}

`terraform apply "step7.tfplan"`{{execute}}
