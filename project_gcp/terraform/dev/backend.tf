module "k8_backend" {

  providers = {
    google = google.equifax
  }

  source = "../../terraform/modules/env_backend"

 name        = "k8"
 project     = "equi-ch-dev-8fed"
 group = "cargar con la info del kuber"

}