module "security_group" {
    
provider = {
    aws = "aws"
}

source = "../../tarraform/modules/env_ami"

  source_instance_id = "${XXXXXX}"
  stage              = "${XXXXX}"
  namespace          = "${XXXXXX}"
  name               = "${XXXXX}"
  attributes         = "${XXXXXX}"
  tags               = "${XXXXXX}"

}