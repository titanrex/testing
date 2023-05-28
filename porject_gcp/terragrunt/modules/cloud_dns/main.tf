resource "google_dns_managed_zone" "cloud_dns" {
  name        = "my-dns-zone"
  dns_name    = "my-domain.com"
  # Configura los demás parámetros según tus necesidades
}