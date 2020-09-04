resource "datadog_service_level_objective" "beacon" {
  name        = "${kubernetes_deployment.beacon.metadata[0].name} SLO"
  type        = "monitor"
  description = "SLO for the ${kubernetes_deployment.beacon.metadata[0].name} deployment"
  monitor_ids = [datadog_synthetics_test.beacon.monitor_id]

  thresholds {
    timeframe       = "7d"
    target          = 99.9
    warning         = 99.99
    target_display  = "99.9"
    warning_display = "99.99"
  }

  thresholds {
    timeframe       = "30d"
    target          = 99.9
    warning         = 99.99
    target_display  = "99.9"
    warning_display = "99.99"
  }

  tags = ["app:beacon", "env:demo"]
}
