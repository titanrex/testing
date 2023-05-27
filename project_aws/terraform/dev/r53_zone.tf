module "roboto_dominio" {
    
provider = {
    aws = "aws"
}

source = "../../tarraform/modules/env_r53_alias"

  name    = "dev.roboto.com"
  type    = "NS"
  ttl     = 30

}