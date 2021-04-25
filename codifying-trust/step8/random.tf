# see https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string
resource "random_string" "prefix" {
  # enable this resource when the `enable_random_prefix` is set to `true`
  count = var.enable_random_suffix ? 1 : 0

  length  = 4
  special = false
}

locals {
  # DOCUMENT THIS
  pet_name_prefix = var.enable_random_suffix ? random_string.prefix[0].result : null
}

resource "random_pet" "container" {
  length    = var.pet_name_length
  prefix    = local.pet_name_prefix
  separator = "-"
}
