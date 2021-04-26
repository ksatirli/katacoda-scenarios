terraform {
  required_providers {
    # see https://registry.terraform.io/providers/hashicorp/http/latest
    http = {
      source  = "hashicorp/http"
      version = "2.1.0"
    }
  }

  required_version = "0.15.0"
}
