variable "name" {
  description = "Nombre del conjunto de registros DNS"
  type        = string
}

variable "ttl" {
  description = "TTL (Time to Live) del conjunto de registros DNS"
  type        = number
}

variable "type" {
  description = "Tipo del conjunto de registros DNS"
  type        = string
}

variable "rrdatas" {
  description = "Datos de recursos del conjunto de registros DNS"
  type        = list(string)
}