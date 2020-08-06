resource "datadog_monitor" "beacon" {
  name               = "Kubernetes Node Health"
  type               = "metric alert"
  message            = "Kubernetes Nodes are not in an optimal health state. Notify: @operator"
  escalation_message = "Please investigate the Kubernetes Nodes, @operator"

  query = "max(last_1m):sum:kubernetes.pods.running{kube_deployment:beacon} <= 1"

  thresholds = {
    ok       = 3
    warning  = 2
    critical = 1
  }

  notify_no_data = true

  tags = ["app:beacon", "env:demo"]
}
