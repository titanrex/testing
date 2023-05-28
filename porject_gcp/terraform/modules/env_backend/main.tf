resource "google_compute_backend_service" "backend_service" {
  name        = var.name
  project     = var.project_id
  
  backend {
    group = var.group
  }
}