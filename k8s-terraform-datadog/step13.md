# Cleaning up

`terraform plan -destroy -out="destroy-resources.tfplan"`{{execute}}

`terraform apply "destroy-resources.tfplan"`{{execute}}
