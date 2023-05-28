module "tcp_health_check" {
    providers = {
    google = google.equifax
    }
  source         = "../../terraform/modules/env_health_check_tcp"

  name = "tcp-health-check"
  port              = 443
}