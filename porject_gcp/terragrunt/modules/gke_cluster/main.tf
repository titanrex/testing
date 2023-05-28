resource "google_container_cluster" "gke_cluster" {
  name               = "my-cluster"
  initial_node_count = 3
  zone               = var.zone
  # Configura los demás parámetros según tus necesidades
}