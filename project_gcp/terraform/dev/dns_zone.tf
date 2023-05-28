
module "zone_k8" {

  providers = {
    google = google.equifax
  }

  source = "../../terraform/modules/env_dns_zone"

 name        = "k8"
 dns_name    = "cargarnombre"
 project     = "equi-ch-dev-8fed"

}