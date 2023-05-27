module "security_group" {
    
provider = {
    aws = "aws"
}

source = "../../tarraform/modules/env_postgres"

  name            = "roboto_postgres"
  engine          = "aurora-postgresql"
  cluster_family  = "aurora-postgresql9.6"
  cluster_size    = 2
  namespace       = "dev"
  stage           = "dev"
  admin_user      = "admin1"
  admin_password  = "Test123456789"
  db_name         = "dbname"
  db_port         = 5432
  instance_type   = "db.r4.large"
  vpc_id          = "xxxxxxxx"
  security_groups = ["roboto_group"]
  subnets         = ["xxxxxxxx", "xxxxxxxx"]
  zone_id         = "xxxxxxxx"
}