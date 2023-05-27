variable "name" {
  description = "Name for the security group"
  type        = string
}

variable "description" {
  description = "Description for the security group"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "ingress_cidr_blocks" {
  description = "CIDR blocks for ingress rules"
  type        = list(string)
}

variable "ingress_with_cidr_blocks" {
  description = "Ingress rules with CIDR blocks"
  type        = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    description = string
    cidr_blocks = string
  }))
}