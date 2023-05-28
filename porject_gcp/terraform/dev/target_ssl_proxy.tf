
module "target_ssl_proxy" {
  providers = {
    google = google.equifax
  }
  source = "../../terraform/modules/env_target_ssl_proxy"

  name = var.name
  backend_service_name = "crear"
  ssl_certificate_name = "crear"
}