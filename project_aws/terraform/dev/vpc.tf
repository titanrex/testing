module "vpc_roboto" {
    
provider = {
    aws = "aws"
}

source = "../../tarraform/modules/env_vpc"

  name = "vpc_roboto"
  cidr = "10.0.0.0/16"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = "dev"  

}