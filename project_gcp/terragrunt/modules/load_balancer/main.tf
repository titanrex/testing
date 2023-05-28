resource "google_compute_forwarding_rule" "load_balancer" {
  name        = "my-load-balancer"
  ip_protocol = "TCP"
  port_range  = 80
  # Configura los demás parámetros según tus necesidades
}