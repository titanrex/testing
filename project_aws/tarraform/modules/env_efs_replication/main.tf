module "efs_replication" {
  source = "terraform-aws-modules/efs/aws//modules/replication"

  source_file_system_id = module.efs.file_system_id
  destination_availability_zone_names = var.replication_destination_availability_zone_names
  destination_kms_key_id = var.replication_destination_kms_key_id
}