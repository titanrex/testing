variable "name" {
  description = "Nombre del clúster RDS"
  type        = string
}

variable "engine" {
  description = "Motor de base de datos del clúster RDS"
  type        = string
}

variable "cluster_family" {
  description = "Familia de clúster del RDS"
  type        = string
}

variable "cluster_size" {
  description = "Tamaño del clúster RDS"
  type        = number
}

variable "namespace" {
  description = "Namespace para el clúster RDS"
  type        = string
}

variable "stage" {
  description = "Etapa del clúster RDS"
  type        = string
}

variable "admin_user" {
  description = "Nombre de usuario administrador para el clúster RDS"
  type        = string
}

variable "admin_password" {
  description = "Contraseña de usuario administrador para el clúster RDS"
  type        = string
}

variable "db_name" {
  description = "Nombre de la base de datos del clúster RDS"
  type        = string
}

variable "db_port" {
  description = "Puerto de la base de datos del clúster RDS"
  type        = number
}

variable "instance_type" {
  description = "Tipo de instancia del clúster RDS"
  type        = string
}

variable "vpc_id" {
  description = "ID de VPC del clúster RDS"
  type        = string
}

variable "security_groups" {
  description = "Lista IDs grupos de seguridad"
  type        = list(string)
}

variable "subnets" {
  description = "RDS"
  type        = list(string)
}

variable "zone_id" {
  description = "ID de zona del clúster RDS"
  type        = string
}