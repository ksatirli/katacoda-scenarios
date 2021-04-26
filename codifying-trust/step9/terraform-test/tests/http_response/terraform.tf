terraform {
  required_providers {
    # see https://www.terraform.io/docs/language/modules/testing-experiment.html
    test = {
      source = "terraform.io/builtin/test"
      # version isn't required (or particularly useful) for built-in providers
    }

    # see https://registry.terraform.io/providers/hashicorp/http/latest
    http = {
      source  = "hashicorp/http"
      version = "2.1.0"
    }
  }
}
