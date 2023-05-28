module "ssl_certificate" {
    providers = {
    google = google.equifax
  }
  source        = "../../terraform/modules/env_ssl_certificate"
  cert_name = "my-custom-cert"
  private_key = file("path/to/my/private_key.pem")
  certificate = file("path/to/my/certificate.pem")
}

