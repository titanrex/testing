resource "google_sql_database_instance" "cloud_sql" {
  name             = "my-sql-instance"
  backend_type     = "SECOND_GEN"
  database_version = "POSTGRES_9_6"
  # Configura los demás parámetros según tus necesidades
}