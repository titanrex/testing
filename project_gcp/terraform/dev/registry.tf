module "k8_backend" {

  providers = {
    google = google.equifax
  }

  source = "../../terraform/modules/env_container_registry"

 name        = "k8_registry"
 location = "ajustar"
 project     = "equi-ch-dev-8fed"
 
 // Aquí van más configuraciones del Container Registry

}