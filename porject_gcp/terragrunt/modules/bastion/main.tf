resource "google_compute_instance" "bastion" {
  name         = "my-bastion"
  machine_type = "n1-standard-1"
  zone         = "us-east41-a"
  image        = "ubuntu-1804-bionic-v20200529"
  # Configura los demás parámetros según tus necesidades
}