## Workspace Setup

> ⚠️ If the Katacoda Terminal interface does not respond with the Terraform version immediately, wait a bit, while the `terraform` binary is downloaded and made available for the workshop.

---

Now, today’s session is going to be much more action packed than your standard workshop.

We will deploy an application to a Kubernetes cluster, then we'll install the Datadog agent across
the cluster, complete with live logs!

Towards the end, we will be creating monitors, synthetic tests and service level objects, all from the comfort of our code editor.

# Verify local installations

Let's test our local workspace to ensure we have all the right tools for today's workshop.

First, let's confirm that we have a valid Terraform executable in our workspace.
Terraform should be at version 0.12.29 or higher, ideally.

`terraform version`{{execute}}

Then we want to make sure that we have the correct version of Helm installed. Today we'll be using version 3 of Helm.

`helm version`{{execute}}

Do those two versions look correct?

If so, let's move to the next step: checking if the `datadog` Chart is available:

`helm search datadog`{{execute}}

The `datadog/datadog` Chart should be at chart version `2.4.4` or higher, ideally
