output "beacon_url" {
  description = "Kubernetes hosted URL for the Beacon application"
  value       = "http://${kubernetes_service.beacon.load_balancer_ingress[0].ip}:${kubernetes_service.beacon.spec[0].port[0].port}"
}

output "beacon_dashboard" {
  description = "Datadog dashboard for the Beacon application"
  value       = "https://app.datadoghq.com${datadog_dashboard.beacon.url}"
}
