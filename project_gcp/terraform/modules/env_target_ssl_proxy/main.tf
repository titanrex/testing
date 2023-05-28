resource "google_compute_target_ssl_proxy" "default" {

  name             = var.name
  backend_service  = google_compute_backend_service.default.name
  ssl_certificates = [google_compute_ssl_certificate.default.name]
}
