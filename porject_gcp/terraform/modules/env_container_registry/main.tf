resource "google_container_registry" "container_registry" {
  name     = var.name
  location = var.location
  project  = var.project

  // Aquí van más configuraciones del Container Registry
}