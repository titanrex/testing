resource "aws_security_group" "vote_service_sg" {
  name        = var.name
  description = var.description
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = var.ingress_cidr_blocks
  }

  dynamic "ingress" {
    for_each = var.ingress_with_cidr_blocks
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      description = ingress.value.description
      cidr_blocks = ingress.value.cidr_blocks
    }
  }
}