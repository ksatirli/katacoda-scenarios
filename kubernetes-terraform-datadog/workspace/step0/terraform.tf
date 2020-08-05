terraform {
  required_providers {
    datadog    = "~> 2.12"
    helm       = "~> 1.2"
    kubernetes = "~> 1.11"
  }

  required_version = "~> 0.12.29"
}
