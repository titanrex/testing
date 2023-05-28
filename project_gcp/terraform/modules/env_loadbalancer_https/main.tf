

resource "google_compute_global_forwarding_rule" "default" {
  name                  = var.name
  ip_protocol           = "HTTPS"
  load_balancing_scheme = "EXTERNAL"
  port_range            = var.port_range
  target                = google_compute_target_ssl_proxy.default.name 
  #ip_address            = google_compute_global_address.default.name es para reservar una ip
}
