
variable "machine_type" {
  description = "Tipo de máquina virtual"
  default     = "e2-medium"
}

variable "image" {
  description = "Imagen de la máquina virtual"
  default     = "debian-cloud/debian-11"
}