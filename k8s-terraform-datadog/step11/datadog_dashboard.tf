resource "datadog_dashboard" "beacon" {
  title        = "Beacon Service"
  description  = "A Datadog Dashboard for the ${kubernetes_deployment.beacon.metadata[0].name} deployment"
  layout_type  = "ordered"
  is_read_only = true

  widget {
    alert_graph_definition {
      alert_id = datadog_monitor.beacon.id
      time = {
        "live_span" = "15m"
      }
      title    = "Service"
      viz_type = "timeseries"
    }
    service_level_objective_definition {
      show_error_budget = true
      slo_id            = datadog_service_level_objective.beacon.id
      time_windows = [
        "7d",
        "30d",
      ]
      view_mode = "overall"
      view_type = "detail"
    }
  }

  widget {
    hostmap_definition {
      no_group_hosts  = true
      no_metric_hosts = true
      node_type       = "container"
      title           = "Kubernetes Pods"

      request {
        fill {
          q = "avg:process.stat.container.cpu.total_pct{*} by {host}"
        }
      }

      style {
        palette      = "hostmap_blues"
        palette_flip = false
      }
    }
  }

  widget {


    timeseries_definition {
      show_legend = false
      title       = "CPU Utilization"

      request {
        display_type = "line"
        q            = "top(avg:kubernetes.cpu.system.total{kube_namespace:${kubernetes_namespace.beacon.metadata[0].name}} by {pod_name}, 10, 'mean', 'desc')"

        style {
          line_type  = "solid"
          line_width = "normal"
          palette    = "dog_classic"
        }
      }

      yaxis {
        include_zero = true
        max          = "auto"
        min          = "auto"
        scale        = "linear"
      }
    }
  }
  widget {


    alert_graph_definition {
      alert_id = datadog_monitor.beacon.id
      title    = "Alert: Kubernetes Node Health"
      viz_type = "timeseries"
    }
  }
  widget {
    hostmap_definition {
      no_group_hosts  = true
      no_metric_hosts = true
      node_type       = "host"
      title           = "Kubernetes Nodes"

      request {
        fill {
          q = "avg:system.cpu.user{*} by {host}"
        }
      }

      style {
        palette      = "hostmap_blues"
        palette_flip = false
      }
    }
  }

  widget {
    timeseries_definition {
      show_legend = false
      title       = "Memory Utilization"
      request {
        display_type = "line"
        q            = "top(avg:kubernetes.memory.usage{kube_namespace:${kubernetes_namespace.beacon.metadata[0].name}} by {pod_name}, 10, 'mean', 'desc')"

        style {
          line_type  = "solid"
          line_width = "normal"
          palette    = "dog_classic"
        }
      }
      yaxis {
        include_zero = true
        max          = "auto"
        min          = "auto"
        scale        = "linear"
      }
    }
  }
}
