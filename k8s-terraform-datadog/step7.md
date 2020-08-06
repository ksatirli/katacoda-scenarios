## Installing the Helm Chart for Datadog

> ⚠️ If the Katacoda Editor interface does not show the `helm_datadog.tf` file, please click the <i class="fa fa-sync"></i> Refresh button.

`helm init --client-only`{{execute}}

`helm repo update`{{execute}}

`terraform plan -out="step7.tfplan"`{{execute}}

`terraform apply "step7.tfplan"`{{execute}}

---

**TODO: Showcase the code**
