resource "google_dns_managed_zone" "dns_zone" {
  name        = var.dns_zone_name
  dns_name    = var.dns_name
  project     = var.project
}