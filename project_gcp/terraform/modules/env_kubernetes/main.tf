module "gke_cluster" {
  source          = "terraform-google-modules/kubernetes-engine/google"
  project_id      = var.project_id
  name            = var.name
  region          = var.region
  zones           = var.zones
  network         = var.network
  subnetwork      = var.subnetwork
  ip_range_pods   = var.ip_range_pods
  ip_range_services = var.ip_range_services
  http_load_balancing = var.http_load_balancing
  network_policy  = var.network_policy
  horizontal_pod_autoscaling = var.horizontal_pod_autoscaling
  filestore_csi_driver = var.filestore_csi_driver

  node_pools = [
    {
      node_pool_name      = var.node_pool_name
      machine_type        = var.machine_type
      node_locations      = var.node_locations
      min_count           = var.min_node_count
      max_count           = var.max_node_count
      local_ssd_count     = var.local_ssd_count
      spot                = var.spot_instances
      disk_size_gb        = var.disk_size_gb
      disk_type           = var.disk_type
      image_type          = var.image_type
      enable_gcfs         = var.enable_gcfs
      enable_gvnic        = var.enable_gvnic
      auto_repair         = var.auto_repair
      auto_upgrade        = var.auto_upgrade
      service_account     = var.service_account
      preemptible         = var.preemptible
      initial_node_count  = var.initial_node_count
    }
  ]

  node_pools_oauth_scopes = var.node_pools_oauth_scopes

#   node_pools_labels = var.node_pools_labels

#   node_pools_metadata = var.node_pools_metadata

  node_pools_taints = var.node_pools_taints

#   node_pools_tags = var.node_pools_tags
}