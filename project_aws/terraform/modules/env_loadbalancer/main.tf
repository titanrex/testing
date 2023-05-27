module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 8.0"

  name = var.name

  load_balancer_type = var.load_balance_type

  vpc_id             = var.vpc_id
  subnets            = var.subnets
  security_groups    = var.security_groups

  access_logs = var.access_logs

# target_groups = var.target_groups

  https_listeners = var.https_listeners

  http_tcp_listeners = var.http_tcp_listeners

  tags = var.tags
}