# see https://www.terraform.io/docs/providers/kubernetes/index.html for more information
provider "kubernetes" {
  # load Kubernetes Cluster configuration from `~/.kubectl/config` as opposed to manually
  # configuring `host`, `client_certificate`, `client_key`, and `cluster_ca_certificate`.
  load_config_file = true
}
