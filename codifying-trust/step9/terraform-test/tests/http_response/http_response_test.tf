# load module
module "http" {
  source = "../.."
}

# see https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http
data "http" "http_response" {
  # load URL from module
  url = module.http.checkpoint_url
}

resource "test_assertions" "http_response" {
  component = "http_response"

  check "valid_json" {
    description = "URL responds with valid JSON in body"
    condition   = can(jsondecode(data.http.http_response.body))
  }

  check "valid_headers_json" {
    description = "URL responds with valid headers"
    condition   = can(contains(data.http.http_response.response_headers["Content-Type"], "application/json"))
  }
}
