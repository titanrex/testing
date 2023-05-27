variable "efs_availability_zone_names" {
  description = "Nombres de las zonas de disponibilidad para EFS"
  type        = list(string)
}

variable "replication_destination_availability_zone_names" {
  description = "Nombres de las zonas de disponibilidad de destino para la replicación de EFS"
  type        = list(string)
}

variable "replication_destination_kms_key_id" {
  description = "ID de la clave KMS de destino para la replicación de EFS"
  type        = string
}