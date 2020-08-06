# see https://www.terraform.io/docs/providers/datadog/index.html for more information
provider "datadog" {
  # The values for `api_key` and `app_key` are populated from the environment
  api_key = var.datadog_api_key
  app_key = var.datadog_app_key
}
