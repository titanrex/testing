
module "zone_k8" {

  providers = {
    google = google.equifax
  }

  source = "../../terraform/modules/env_cloudsql"

  name             = "prok8"
  database_version = "ajustarversion"
  region           = "var.region"
  project          = "var.project_id"

  settings {
    tier            = "ajustar"
    activation_policy = "ajustar"
    disk_size       = "ajustar"
    disk_autoresize = "ajustar"
    disk_type       = "ajustar"
    maintenance_window {
      day  = "ajustar"
      hour = "ajustar"
    }
    backup_configuration {
      enabled               = "ajustar"
      start_time            = "ajustar"
      location              = "ajustar"
      binary_log_enabled    = "ajustar"
      binary_log_retention_days = "ajustar"
    }

      private_network = "projects/sequi-ch-host-vpc-equifax-xf67/regions/us-east4/subnetworks/eq-base-asda56"
    }
  }
