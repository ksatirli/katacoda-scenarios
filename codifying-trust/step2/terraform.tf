terraform {
  required_providers {
    local = {
      # see https://registry.terraform.io/providers/hashicorp/local/latest
      source  = "hashicorp/local"
      version = "2.1.0"
    }
  }

  required_version = "0.15.0"
}
