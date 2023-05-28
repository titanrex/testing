resource "google_compute_health_check" "tcp-health-check" {
  name = var.name

  timeout_sec        = 1
  check_interval_sec = 1

  tcp_health_check {
    port = var.port
  }
}