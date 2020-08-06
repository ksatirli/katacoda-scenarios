# Introduction

Now, today’s session is going to be much more action packed than your standard workshop.

We will deploy an application to a Kubernetes cluster, then we'll install the Datadog agent across
the cluster, complete with live logs!

Towards the end, we will be creating monitors, synthetic tests and service level objects, all from the comfort of our code editor.

# Verify local installations

Let's test our local workspace to ensure we have all the right tools for today's workshop.

First, let's confirm that we have a valid Terraform executable in our workspace.
Terraform should be at version 0.12.29 or higher, ideally.

`terraform version`{{execute}}

Does that look correct?

If so, let's move to the next step!

> If the Katacoda Editor interface does not show `terraform.tf`, please click the <i class="fa fa-sync"></i> Refresh button.
