# see https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http
data "http" "checkpoint" {
  url = var.checkpoint_url
}
