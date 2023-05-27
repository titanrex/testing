module "app_example_com_cloudfront" {
  source = "QuiNovas/cloudfront-r53-alias-record/aws"

  domain_name = var.domain_name
  name        = var.name
  zone_id     = var.zone_id
}