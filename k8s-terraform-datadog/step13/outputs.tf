output "beacon_dashboard" {
  description = "Datadog dashboard for the Beacon application"
  value       = "https://app.datadoghq.com${datadog_dashboard.beacon.url}"
}
