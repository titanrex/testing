terraform {
  source = "git::https://github.com/cloudposse/terraform-aws-alb.git"
}

inputs = {
  name                   = "my-load-balancer"
  vpc_id                 = "vpc-xxxxxxxx"
  subnets                = ["subnet-xxxxxxxx", "subnet-xxxxxxxx"]
  security_groups        = ["sg-xxxxxxxx"]
  target_group_name      = "my-target-group"
  target_group_port      = 80
  target_group_protocol  = "HTTP"
  target_group_target    = "instance"
  target_group_targets   = ["instance-id-1", "instance-id-2"]
  listener_port          = 80
  listener_protocol      = "HTTP"
}

locals {
  ami_id                 = "ami-xxxxxxxx"
  ami_encryption         = true
  rds_instance_identifier = "my-rds-instance"
  rds_engine             = "postgres"
  rds_engine_version     = "13.3"
  rds_instance_class     = "db.t3.medium"
  rds_username           = "my-username"
  rds_password           = "my-password"
  rds_db_name            = "my-db-name"
  rds_allocated_storage  = 20
  r53_alias_name         = "my-alias"
  r53_alias_target       = "my-load-balancer-url"
  r53_hosted_zone_name   = "my-domain.com"
  efs_name               = "my-efs"
  efs_subnet_ids         = ["subnet-xxxxxxxx", "subnet-xxxxxxxx"]
  efs_security_group     = "sg-xxxxxxxx"
}

module "security_groups" {
  source = "git::https://github.com/cloudposse/terraform-aws-security-group.git"

  # Configura los parámetros para el módulo de Security Groups según tus necesidades
}

module "ami" {
  source = "git::https://github.com/cloudposse/terraform-aws-ami.git"

  # Configura los parámetros para el módulo de AMI según tus necesidades
  ami_id         = local.ami_id
  encryption     = local.ami_encryption
}

module "rds" {
  source = "git::https://github.com/cloudposse/terraform-aws-rds-cluster.git"

  # Configura los parámetros para el módulo de RDS según tus necesidades
  instance_identifier = local.rds_instance_identifier
  engine              = local.rds_engine
  engine_version      = local.rds_engine_version
  instance_class      = local.rds_instance_class
  username            = local.rds_username
  password            = local.rds_password
  db_name             = local.rds_db_name
  allocated_storage   = local.rds_allocated_storage
  vpc_security_group_ids = module.security_groups.this_security_group_id
}

module "r53_alias" {
  source = "git::https://github.com/cloudposse/terraform-aws-route53-alias.git"

  # Configura los parámetros para el módulo de R53 Alias según tus necesidades
  alias_name   = local.r53_alias_name
  alias_target = local.r53_alias_target
  zone_id      = "XXXXXXXXXXXXX" # Reemplaza con el ID de la zona hospedada existente
}

module "r53_hosted_zone" {
  source = "git::https://github.com/cloudposse/terraform-aws-route53-zone.git"

  # Configura los parámetros para el módulo de R53 Hosted Zone según tus necesidades
  zone_name = local.r53_hosted_zone_name
}

module "efs" {
  source = "git::https://github.com/cloudposse/terraform-aws-efs.git"

  # Configura los parámetros para el módulo de EFS según tus necesidades
  efs_name     = local.efs_name
  subnet_ids   = local.efs_subnet_ids
  security_group = local.efs_security_group
}
