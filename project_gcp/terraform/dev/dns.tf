module "dns_k8" {

  providers = {
    google = google.equifax
  }

  source = "../../terraform/modules/env_dns_zone"

 name        = "dns_k8"
 managed_zone = "zone_k8"
 ttl          = "ajustar"
 type         = "especificar"
 rrdatas      = "ajustar"

} 