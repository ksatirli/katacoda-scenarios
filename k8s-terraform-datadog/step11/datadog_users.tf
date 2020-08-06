resource "datadog_user" "operator" {
  access_role = "st"
  disabled    = false
  email       = var.datadog_user_email
  handle      = var.datadog_user_email
  name        = "Operator"
}
