
variable "cert_name" {
  description = "Nombre del certificado SSL"
  type        = string
  default     = "default-cert"
}

variable "private_key" {
  description = "Contenido de la clave privada"
  type        = string
  default     = ""
}

variable "certificate" {
  description = "Contenido del certificado"
  type        = string
  default     = ""
}
