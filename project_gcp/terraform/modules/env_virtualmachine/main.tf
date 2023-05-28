
resource "google_compute_instance" "vm_instance" {
  name         = "my-vm"
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
  }
}

resource "google_compute_machine_image" "image" {
  name            = "my-image"
  source_instance = google_compute_instance.vm_instance.self_link
}