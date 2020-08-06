## Deploying Beacon, a demo application

> ⚠️ If the Katacoda Editor interface does not show the `helm.tf` and `kubernetes_beacon.tf` files, please click the <i class="fa fa-sync"></i> Refresh button.

`terraform plan -out="step6.tfplan"`{{execute}}

`terraform apply "step6.tfplan"`{{execute}}

`kubectl get namespaces beacon`{{execute}}

`kubectl get deployment --namespace=beacon`{{execute}}

`kubectl get services --namespace=beacon`{{execute}}

---

**TODO: Showcase the code**
