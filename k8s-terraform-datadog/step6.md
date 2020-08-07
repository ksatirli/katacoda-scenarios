## Deploying Beacon, a demo application

> ⚠️ If the Katacoda Editor interface does not show the `helm.tf` and `kubernetes_beacon.tf` files, please click the <i class="fa fa-sync"></i> Refresh button.

---

Let's deploy an application named "beacon" that will run on Kubernetes. Beacon is a demo application that will show us relevant information about the pod it is running in.

Let's list out the Kubernetes namespaces we currently have

`kubectl get namespaces`{{execute}}

You can see that there are a few, but there's really not a great place to put our beacon application. Let's add a new namespace called, "beacon" using Terraform.

We first will plan out our Kubernetes namespace to put our deployment in, and save that Terraform plan to a file to run when we're ready.

`terraform plan -out="step6.tfplan"`{{execute}}

If the plan looks good, we can the apply it!

`terraform apply "step6.tfplan"`{{execute}}

Excellent! Let's check to see what we created:

`kubectl get namespaces`{{execute}}

We also added the beacon application with a Kubernetes deployment:

`kubectl get deployment --namespace=beacon`{{execute}}

And we added a service so that we can expose our beacon application to the world!

`kubectl get services --namespace=beacon`{{execute}}
