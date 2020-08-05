variable "project_prefix" {
  type        = string
  description = "Project Prefix"
  default     = "dash-2020-terraform-workshop"
}

variable "project_description" {
  type        = string
  description = "Project Description"
  default     = "Project for Dash 2020 workshop: Pups and Pods"
}

variable "application_name" {
  type        = string
  description = "Application Name"
  default     = "beacon"
}

variable "datadog_user_email" {
  type        = string
  description = "Email address for Datadog User"
}
