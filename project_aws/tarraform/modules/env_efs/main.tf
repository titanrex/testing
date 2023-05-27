module "efs" {
  source = "terraform-aws-modules/efs/aws"

  name = var.name
  kms_key_id = var.kms_key_id
  availability_zone_names = var.availability_zone_names
}
