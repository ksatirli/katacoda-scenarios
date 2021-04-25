provider "docker" {
  # see https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs#host
  host = "unix:///var/run/docker.sock"
}

# see https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/image
resource "docker_image" "beacon" {
  # see https://hub.docker.com/r/onlydole/beacon/tags?page=1&ordering=last_updated
  name = "onlydole/beacon:main"
}

# see https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs/resources/container
resource "docker_container" "beacon" {
  # DOCUMENT THIS
  name  = "beacon"
  image = docker_image.beacon.name
}

output "container_ip" {
  description = "Container IP for `beacon`"
  value       = docker_container.beacon.ip_address
}

output "container_command" {
  description = "Command to poll HTTP interface of `beacon` container"
  value       = "curl http://${docker_container.beacon.ip_address}:8080"
}
