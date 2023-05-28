variable "name" {
  description = "Nombre de la zona de DNS administrada"
  type        = string
}


variable "dns_name" {
  description = "Nombre DNS de la zona administrada"
  type        = string
}

variable "project" {
  description = "ID del proyecto de GCP"
  type        = string
}
