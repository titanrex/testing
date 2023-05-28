module "gke_cluster" {

      providers = {
    google = google.equifax
  }

  source = "../../terraform/modules/env_kubernetes"

  project_id                 = "equi-ch-dev-8fed"
  name                       = "gke-test-1"
  region                     = "us-east4"
  zones                      = ["us-east4-a", "us-east4-b", "us-east4-f"]
  network                    = "equi-ch-host-vpc-equifax-xf67"
  subnetwork                 = "projects/equi-ch-host-vpc-equifax-xf67/regions/us-east4/subnetworks/eq-base-asda56"
  ip_range_pods              = "us-east4-01-gke-01-pods"
  ip_range_services          = "us-east4-01-gke-01-services"
  http_load_balancing        = false
  network_policy             = false
  horizontal_pod_autoscaling = true
  filestore_csi_driver       = false

  node_pools = [
    {
      node_pool_name            = "default-node-pool"
      machine_type              = "e2-medium"
      node_locations            = "us-east4-b,us-east4-c"
      min_count                 = 1
      max_count                 = 100
      local_ssd_count           = 0
      spot                      = false
      disk_size_gb              = 100
      disk_type                 = "pd-standard"
      image_type                = "COS_CONTAINERD"
      enable_gcfs               = false
      enable_gvnic              = false
      auto_repair               = true
      auto_upgrade              = true
      service_account           = "project-service-account@equi-ch-dev-9gak.iam.gserviceaccount.com"
      preemptible               = false
      initial_node_count        = 80
    }
  ]

  node_pools_oauth_scopes = {
    all = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }

  node_pools_taints = {
    all = []

    default-node-pool = [
      {
        key    = "default-node-pool"
        value  = true
        effect = "PREFER_NO_SCHEDULE"
      },
    ]
  }

}