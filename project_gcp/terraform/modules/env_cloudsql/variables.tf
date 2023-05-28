variable "instance_name" {
  description = "Nombre de la instancia de Cloud SQL"
  type        = string
}

variable "database_version" {
  description = "Versión de la base de datos de Cloud SQL"
  type        = string
}

variable "region" {
  description = "Región de Cloud SQL"
  type        = string
}


variable "instance_tier" {
  description = "Tier de la instancia de Cloud SQL"
  type        = string
}

variable "activation_policy" {
  description = "Política de activación de la instancia de Cloud SQL"
  type        = string
}

variable "disk_size" {
  description = "Tamaño del disco de la instancia de Cloud SQL"
  type        = number
}

variable "disk_autoresize" {
  description = "Habilitar autoescalado del disco de la instancia de Cloud SQL"
  type        = bool
}

variable "disk_type" {
  description = "Tipo de disco de la instancia de Cloud SQL"
  type        = string
}

variable "maintenance_window_day" {
  description = "Día de la ventana de mantenimiento de la instancia de Cloud SQL"
  type        = string
}

variable "maintenance_window_hour" {
  description = "Hora de la ventana de mantenimiento de la instancia de Cloud SQL"
  type        = number
}

variable "backup_enabled" {
  description = "Habilitar copias de seguridad de la instancia de Cloud SQL"
  type        = bool
}

variable "backup_start_time" {
  description = "Hora de inicio de las copias de seguridad de la instancia de Cloud SQL"
  type        = string
}

variable "backup_location" {
  description = "Ubicación de las copias de seguridad de la instancia de Cloud SQL"
  type        = string
}

variable "binary_log_enabled" {
  description = "Habilitar registros binarios de la instancia de Cloud SQL"
  type        = bool
}

variable "binary_log_retention_days" {
  description = "Días de retención de los registros binarios de la instancia de Cloud SQL"
  type        = number
}

variable "ipv4_enabled" {
  description = "Habilitar dirección IP IPv4 de la instancia de Cloud SQL"
  type        = bool
}

variable "private_network" {
  description = "Red privada para la instancia de Cloud SQL"
  type        = string
}





