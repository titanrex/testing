module "tf_ami_from_instance" {
  source = "git::https://github.com/cloudposse/tf_ami_from_instance.git?ref=master"

  source_instance_id = aws_instance.web.id
  stage              = var.stage
  namespace          = var.namespace
  name               = var.name
  attributes         = var.attributes
  tags               = var.tags
}
