module "aws_lb" {
    
provider = {
    aws = "aws"
}

source = "../../tarraform/modules/env_loadbalancer"

  name = "roboto_lb"

  load_balancer_type = "application"

  vpc_id             = "vpc-xxxx"
  subnets            = var.subnets
  security_groups    = ["roboto_group"]

  access_logs = {
    bucket = "roboto_bucket"
  }


  https_listeners =    {

      port                 = 443
      protocol             = "HTTPS"
      certificate_arn      = "arn:aws:iam::123456789012:server-certificate/test_cert-123456789012" //cargar certificado propio
      action_type          = "authenticate-cognito"
      target_group_index   = 0
      authenticate_cognito = {
        user_pool_arn       = "arn:aws:cognito-idp::123456789012:userpool/test-pool"
        user_pool_client_id = "xxxxxxxxxx"
        user_pool_domain    = "roboto.com"
      }
    }

  http_tcp_listeners = [
    {
      port        = 80
      protocol    = "HTTP"
      action_type = "redirect"
      redirect = {
        port        = "443"
        protocol    = "HTTPS"
        status_code = "HTTP_301"
      }
    }
  ]

  tags = {
    Environment = "dev"
  }
}