output "ssl_certificate_self_link" {
  description = "La URL del certificado SSL recién creado."
  value       = google_compute_ssl_certificate.default.self_link
}