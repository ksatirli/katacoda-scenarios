## Creating a Service Level Objective (SLO)

> ⚠️ If the Katacoda Editor interface does not show the `datadog_slo.tf` file, please click the <i class="fa fa-sync"></i> Refresh button.

---

Let's create a Service Level Objective (SLO) using our synthetics check we just set up.

Please check out the Terraform code for the Datadog SLO:

> `datadog_slo.tf`{{open}}

We are going to shoot to have four nines of availability (ex. 99.99% uptime) which is about 4.38 minutes of downtime allowed each month.

Please plan and apply, accordingly.

`terraform plan -out="step10.tfplan"`{{execute}}

`terraform apply "step10.tfplan"`{{execute}}

Let's have a look at this in the list of [Datadog SLOs](https://app.datadoghq.com/slo).
