## Cleaning up

---

Please note that this step will remove the Kubernetes resources
(namespace, deploymen,t and service), as well as any resources you
created within Datadog as part of this workshop. This includes a monitor,
synthetic test, SLO, dashboard and a user).

Only proceed if you are sure you want to remove these resources, otherwise
click the orange "CONTINUE" button to finish the workshop.

---

Now that we have deployed everything, let's carry out one final action:
deprovisioning our resources and infrastructure.

Let's start by creating an execution plan of _what_ we want to remove:

`terraform plan -destroy -out="destroy-resources.tfplan"`{{execute}}

Finally, let's run this execution plan to remove our infrastructure
resources:

`terraform apply "destroy-resources.tfplan"`{{execute}}
