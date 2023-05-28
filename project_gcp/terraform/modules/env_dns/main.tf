resource "google_dns_record_set" "dns_record_set" {
  name         = var.name
  managed_zone = google_dns_managed_zone.dns_zone.name
  ttl          = var.ttl
  type         = var.type
  rrdatas      = var.rrdatas
}