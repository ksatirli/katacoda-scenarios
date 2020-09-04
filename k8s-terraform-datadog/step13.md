## Outputs

> ⚠️ If the Katacoda Editor interface does not show the `outputs.tf` file, please click the <i class="fa fa-sync"></i> Refresh button.

---

Sometimes, you might need to use an output value like a DNS zone, or load balancer address

This is especially helpful when you start using Terraform modules (which is a bit beyond the scope of this talk)

Conveniently for us, you can use the "terraform output" command. We have defined an output for the Datadog Beacon Dashboard URL.

To make Outputs available through Terraform, we first need to apply:

`terraform apply`{{execute}}

Next, please run this command to get your specific Datadog dashboard URL:

`terraform output`{{execute}}

After you've had a chance to check out these metrics, let's continue forward.
