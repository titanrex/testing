module "lb_https" {

  providers = {
    google = google.equifax
  }

  source = "../../terraform/modules/env_loadbalancer_https"

  name                  = "ssl-proxy-xlb-forwarding-rule"
  ip_protocol           = "HTTPS"
  load_balancing_scheme = "EXTERNAL"
  port_range            = "443"
  target                = "crearproxyssl"

}

