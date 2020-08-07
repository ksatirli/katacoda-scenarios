variable "datadog_user_email" {
  type = string
  description = "Email address for Datadog User"
  default = "<CHANGE ME>"
}

variable "datadog_api_key" {
  type = string
  description = "Datadog API Key"
  # the value for this variable is available via the Katacoda environment
}

variable "datadog_app_key" {
  type = string
  description = "Datadog App Key"
  # the value for this variable is available via the Katacoda environment
}
