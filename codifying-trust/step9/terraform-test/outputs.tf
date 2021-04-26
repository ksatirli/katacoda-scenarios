# this output is unused by `terraform test`
output "checkpoint_url" {
  description = "URL of Checkpoint Service"
  value       = var.checkpoint_url
}

# this output is unused and only here for debugging purposes
output "checkpoint_body" {
  description = "Body of Checkpoint HTTP Request"
  value       = data.http.checkpoint.body
}

# this output is unused and only here for debugging purposes
output "checkpoint_response_headers" {
  description = "Response Headers of Checkpoint HTTP Request"
  value       = data.http.checkpoint.response_headers
}
