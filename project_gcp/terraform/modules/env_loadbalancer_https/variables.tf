variable "name" {
  type        = string
  description = "The name of the HTTPs load balancer."
}

variable "port_range" {
  type        = number
  description = "The port number for the backend service."
  default     = 443
}




