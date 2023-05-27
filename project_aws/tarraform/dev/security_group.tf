module "security_group" {
    
provider = {
    aws = "aws"
}

source = "../../tarraform/modules/env_security"

  name        = "roboto_group"
  description = "Security group"
  vpc_id      = "vpc-12345678"

  ingress_cidr_blocks = ["10.10.0.0/16"]

  ingress_with_cidr_blocks = [
    {
      from_port   = 8080
      to_port     = 8090
      protocol    = "tcp"
      description = "ports"
      cidr_blocks = "10.10.0.0/16"
    },
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      description = "All traffic"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
}