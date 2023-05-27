 module "roboto_front" {
    
provider = {
    aws = "aws"
}

source = "../../tarraform/modules/env_efs_replication"
 
 
  source_file_system_id = "xxxxx"
  destination_availability_zone_names = "xxxx"
  destination_kms_key_id = "xxxx"
} 

