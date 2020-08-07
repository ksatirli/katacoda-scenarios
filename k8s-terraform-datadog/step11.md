## Creating a Dashboard

> ⚠️ If the Katacoda Editor interface does not show the `datadog_dashboard.tf` file, please click the <i class="fa fa-sync"></i> Refresh button.

---

We've set up some pretty helpful monitors and we are gathering quite a few metrics!

If only we had a dashboard to view them all in....that'd be wonderful, right?

Let's take a look at this file (I know, it's like we're reading your mind).

> `datadog_dashboard.tf`{{open}}

In this Terraform file, you'll see a LOT of configuration around how to set up a potential Datadog
dashboard. This one shows six items of interest, and it will include the previous monitors, SLO, and information we started gathering the moment after we deployed our Datadog agent Helm chart.

Please plan and apply, accordingly.

`terraform plan -out="step11.tfplan"`{{execute}}

`terraform apply "step11.tfplan"`{{execute}}
