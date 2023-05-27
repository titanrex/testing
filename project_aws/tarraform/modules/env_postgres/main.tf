module "rds_cluster_aurora_postgres" {
  source = "cloudposse/rds-cluster/aws"
  # version     = "x.x.x"  # Cloud Posse recomienda fijar la versión de cada módulo

  name            = var.name
  engine          = var.engine
  cluster_family  = var.cluster_family
  cluster_size    = var.cluster_size
  namespace       = var.namespace
  stage           = var.stage
  admin_user      = var.admin_user
  admin_password  = var.admin_password
  db_name         = var.db_name
  db_port         = var.db_port
  instance_type   = var.instance_type
  vpc_id          = var.vpc_id
  security_groups = var.security_groups
  subnets         = var.subnets
  zone_id         = var.zone_id
}