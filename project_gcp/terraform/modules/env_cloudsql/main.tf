resource "google_sql_database_instance" "cloudsql_instance" {
  name             = var.instance_name
  database_version = var.database_version
  region           = var.region
  project          = var.project_id

  settings {
    tier            = var.instance_tier
    activation_policy = var.activation_policy
    disk_size       = var.disk_size
    disk_autoresize = var.disk_autoresize
    disk_type       = var.disk_type
    maintenance_window {
      day  = var.maintenance_window_day
      hour = var.maintenance_window_hour
    }
    backup_configuration {
      enabled               = var.backup_enabled
      start_time            = var.backup_start_time
      location              = var.backup_location
      binary_log_enabled    = var.binary_log_enabled
      binary_log_retention_days = var.binary_log_retention_days
    }
    ip_configuration {
      ipv4_enabled    = var.ipv4_enabled
      private_network = var.private_network
    }
  }
}
