variable "domain_name" {
  description = "Nombre de dominio del CloudFront"
  type        = string
}

variable "name" {
  description = "Nombre del registro de alias de R53"
  type        = string
}

variable "zone_id" {
  description = "ID de zona de Route 53"
  type        = string
}