## Creating a Synthetics Test

> ⚠️ If the Katacoda Editor interface does not show the `datadog_synthetics.tf` file, please click the <i class="fa fa-sync"></i> Refresh button.

---

The next type of monitor we’ll set up is called a synthetic check.

A synthetic check will allow us to specify a URL to check every minute (or few minutes).

Then if the application doesn’t respond with a 200 OK response, we can be alerted that there’s an issue.

> `datadog_synthetics.tf`{{open}}

Do you see that `url` attribute in the `datadog_synthetics_test` block of code? Let's update that so it no longer says
`<CHANGE ME>` and instead, let's put in the public endpoint for the `beacon` application:

`https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/`{{copy}}

Next, let's plan and apply before moving onto the next step.

`terraform plan -out="step9.tfplan"`{{execute}}

`terraform apply "step9.tfplan"`{{execute}}

Let's have a look at this in the list of [Datadog Synthetic Tests](https://app.datadoghq.com/synthetics/list).
