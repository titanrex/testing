variable "name" {
  description = "example.com"
  type        = string
}

variable "type" {
  description = "Nombre de dominio para dev.example.com"
  type        = string
  default     = "NS"
}

variable "ttl"{
  description = "segundo"
  type = number
  default = 30
}