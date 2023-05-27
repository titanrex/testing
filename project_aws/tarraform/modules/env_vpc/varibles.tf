variable "name" {
  description = "Name VPC"
  type        = string
  default     = ""
}

variable "cidr" {
  description = "CIDR block for the vpc "
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "Availability zones for the VPC"
  type        = list(string)
  default     = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}

variable "private_subnets" {
  description = "Private subnets for the VPC"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}



variable "enable_nat_gateway" {
  description = "Enable NAT gateway for the VPC"
  type        = bool
  default     = true
}

variable "enable_vpn_gateway" {
  description = "Enable VPN gateway for the VPC"
  type        = bool
  default     = true
}

variable "tags" {
  description = "Tags for the VPC"
  type        = map(string)
  default     = {
    Terraform   = "true"
    Environment = "dev"
  }
}
