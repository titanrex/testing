module "lb_https" {

  providers = {
    google = google.equifax
  }

  source = "../../terraform/modules/env_virtualmachine"

  name                  = "vm_pivote"
  image                 = "debian-cloud/debian-11"
  network               = "projects/equi-ch-host-vpc-equifax-xf67/regions/us-east4/subnetworks/eq-base-asda56"
  machine_type          = "e2-medium"

}

//para conectar a pivote usar lo siguiente

// gcloud compute ssh [nombre-de-la-instancia-vm] --project [id-del-proyecto] --zone [zona-de-la-instancia-vm] -- -N -L [puerto-local]:localhost:[puerto-del-clúster]
