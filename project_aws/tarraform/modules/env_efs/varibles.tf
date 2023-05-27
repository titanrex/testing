variable "efs_name" {
  description = "Name del sistema de archivos EFS"
  type        = string
}

variable "kms_key_id" {
  description = "ID de la clave KMS para EFS"
  type        = string
}

variable "availability_zone_names" {
  description = "Name de las zonas de disponibilidad para EFS"
  type        = list(string)
}