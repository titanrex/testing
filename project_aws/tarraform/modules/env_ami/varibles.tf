variable "stage" {
  description = "Stage del entorno"
  type        = string
}

variable "namespace" {
  description = "Namespace"
  type        = string
}

variable "name" {
  description = "Nombre del recurso"
  type        = string
}

variable "attributes" {
  description = "Atributos adicionales"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Tags adicionales"
  type        = map(string)
  default     = {}
}