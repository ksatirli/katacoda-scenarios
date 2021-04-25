variable "pet_name_length" {
  type        = number
  description = "Length of Pet Name (in words)"
  default     = 3
}

variable "enable_random_suffix" {
  type        = bool
  description = "Toggle to enable Random Prefix for Pet Name"
  default     = "Project for Dash 2020 workshop: Pups and Pods"
}

variable "env" {
  type        = string
  description = "Application Name"
  default     = "beacon"
}
