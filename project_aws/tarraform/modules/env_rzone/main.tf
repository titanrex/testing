resource "aws_route53_zone" "main" {
  name = "roboto.com"
}

resource "aws_route53_zone" "dev" {
  name = "dev.roboto.com"

  tags = {
    Environment = "dev"
  }
}

resource "aws_route53_record" "dev-ns" {
  zone_id = aws_route53_zone.main.zone_id
  name    = var.name
  type    = var.type
  ttl     = var.ttl
  records = aws_route53_zone.dev.name_servers
}