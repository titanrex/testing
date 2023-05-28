
resource "google_compute_ssl_certificate" "default" {
  name        = var.cert_name
  private_key = var.private_key
  certificate = var.certificate
}