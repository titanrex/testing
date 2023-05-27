variable "_name" {
  description = "Name of the ALB"
  type        = string
}

variable "load_balance_type" {
  description = "Type of the ALB"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnets" {
  description = "List of subnet IDs where the ALB will be deployed"
  type        = list(string)
}

variable "security_groups" {
  description = "List of security group IDs for the ALB"
  type        = list(string)
}

variable "access_logs" {
  description = "Access logs configuration for the ALB"
  type        = map(string)
}

# variable "target_groups" {
#   description = "List of target groups for the ALB"
#   type        = list(object({
#     name_prefix      = string
#     backend_protocol = string
#     backend_port     = number
#     target_type      = string
#   }))
# }

variable "https_listeners" {
  description = "List of HTTPS listeners for the ALB"
  type        = list(object({
    port                 = number
    protocol             = string
    certificate_arn      = string
    action_type          = string
    target_group_index   = number
    authenticate_cognito = map(string)
  }))
}

variable "http_tcp_listeners" {
  description = "List of HTTP/TCP listeners for the ALB"
  type        = list(object({
    port        = number
    protocol    = string
    action_type = string
    redirect    = map(string)
  }))
}

variable "tags" {
  description = "Tags for the ALB"
  type        = map(string)
}