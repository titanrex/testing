module "efs_roboto" {
    
provider = {
    aws = "aws"
}

source = "../../tarraform/modules/env_efs"

 name = "xxx"
  kms_key_id = "xxxx"
  availability_zone_names = "xxxx"

}