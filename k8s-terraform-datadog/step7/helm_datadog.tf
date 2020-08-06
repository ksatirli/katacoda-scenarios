resource "helm_release" "datadog_agent" {
  name      = "datadog-agent"
  chart     = "stable/datadog"
  version   = "2.3.41"
  namespace = kubernetes_namespace.beacon.id

  set_sensitive {
    name  = "datadog.apiKey"
    value = var.datadog_api_key
  }

  set {
    name  = "datadog.logs.enabled"
    value = true
  }

  set {
    name  = "datadog.logs.containerCollectAll"
    value = true
  }
}
