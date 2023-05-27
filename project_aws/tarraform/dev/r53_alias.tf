module "roboto_front" {
    
provider = {
    aws = "aws"
}

source = "../../tarraform/modules/env_r53_alias"

  domain_name = "xxxxxxx.cloudfront.net"
  name        = "roboto.com"
  zone_id     = "xxxxxx"

}