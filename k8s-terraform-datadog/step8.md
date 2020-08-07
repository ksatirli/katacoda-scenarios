## Creating a Monitor

> ⚠️ If the Katacoda Editor interface does not show the `datadog_monitor.tf` file, please click the <i class="fa fa-sync"></i> Refresh button.

---

We can use Terraform to set up two kinds of monitors to help us manage our stack.

The first alert we’ll set up will be one to monitor our Kubernetes nodes. We have three nodes, and we can warn when one fails to work as expected. Then we can alert in a critical state if only one of the three nodes is running.

> `helm_monitor.tf`{{open}}

It's that time again! Let's plan and apply accordingly.

`terraform plan -out="step8.tfplan"`{{execute}}

`terraform apply "step8.tfplan"`{{execute}}
