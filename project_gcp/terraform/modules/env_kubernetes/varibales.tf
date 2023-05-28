variable "project_id" {
  description = "ID del proyecto de GCP"
  type        = string
  default     = "<PROJECT ID>"
}

variable "name" {
  description = "Nombre del clúster de Kubernetes"
  type        = string
  default     = "my-gke-cluster"
}

variable "region" {
  description = "Región de GCP donde se creará el clúster"
  type        = string
  default     = "us-east41"
}

variable "zones" {
  description = "Zonas de GCP donde se distribuirán los nodos del clúster"
  type        = list(string)
  default     = ["us-east41-a", "us-east41-b", "us-east41-c"]
}

variable "network" {
  description = "Nombre de la red de GCP"
  type        = string
  default     = "default"
}

variable "subnetwork" {
  description = "Nombre de la subred de GCP"
  type        = string
  default     = "default"
}

variable "ip_range_pods" {
  description = "Rango de direcciones IP para los pods"
  type        = string
  default     = "10.0.0.0/16"
}

variable "ip_range_services" {
  description = "Rango de direcciones IP para los servicios"
  type        = string
  default     = "10.1.0.0/20"
}

variable "http_load_balancing" {
  description = "Habilitar balanceo de carga HTTP"
  type        = bool
  default     = false
}

variable "network_policy" {
  description = "Habilitar políticas de red"
  type        = bool
  default     = false
}

variable "horizontal_pod_autoscaling" {
  description = "Habilitar escalamiento automático horizontal de pods"
  type        = bool
  default     = true
}

variable "filestore_csi_driver" {
  description = "Habilitar controlador CSI de Filestore"
  type        = bool
  default     = false
}

variable "node_pool_name" {
  description = "Nombre del grupo de nodos"
  type        = string
  default     = "default-node-pool"
}

variable "machine_type" {
  description = "Tipo de máquina de los nodos"
  type        = string
  default     = "e2-medium"
}

variable "node_locations" {
  description = "Ubicaciones de los nodos"
  type        = string
  default     = "us-east41-b,us-east41-c"
}

variable "min_node_count" {
  description = "Cantidad mínima de nodos en el grupo"
  type        = number
  default     = 1
}

variable "max_node_count" {
  description = "Cantidad máxima de nodos en el grupo"
  type        = number
  default     = 100
}

variable "local_ssd_count" {
  description = "Cantidad de discos SSD locales por nodo"
  type        = number
  default     = 0
}

variable "spot_instances" {
  description = "Habilitar instancias spot"
  type        = bool
  default     = false
}

variable "disk_size_gb" {
  description = "Tamaño del disco de cada nodo en GB"
  type        = number
  default     = 100
}

variable "disk_type" {
  description = "Tipo de disco de cada nodo"
  type        = string
  default     = "pd-standard"
}

variable "image_type" {
  description = "Tipo de imagen de los nodos"
  type        = string
  default     = "COS_CONTAINERD"
}

variable "enable_gcfs" {
  description = "Habilitar Google Cloud Filestore"
  type        = bool
  default     = false
}

variable "enable_gvnic" {
  description = "Habilitar GVNIC (Google Virtual Network Interface Cards)"
  type        = bool
  default     = false
}

variable "auto_repair" {
  description = "Habilitar reparación automática de nodos"
  type        = bool
  default     = true
}

variable "auto_upgrade" {
  description = "Habilitar actualización automática de nodos"
  type        = bool
  default     = true
}

variable "service_account" {
  description = "Cuenta de servicio para los nodos del clúster"
  type        = string
  default     = "project-service-account@<PROJECT ID>.iam.gserviceaccount.com"
}

variable "preemptible" {
  description = "Habilitar nodos preemptibles"
  type        = bool
  default     = false
}

variable "initial_node_count" {
  description = "Cantidad inicial de nodos en el grupo"
  type        = number
  default     = 80
}

variable "node_pools_oauth_scopes" {
  description = "Scopes de OAuth para los nodos del clúster"
  type        = map(list(string))
  default     = {
    all = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]
  }
}

# variable "node_pools_labels" {
#   description = "Etiquetas para los nodos del clúster"
#   type        = map(map(string))
#   default     = {
#     all = {}
#     default-node-pool = {
#       default-node-pool = "true"
#     }
#   }
# }

# variable "node_pools_metadata" {
#   description = "Metadatos para los nodos del clúster"
#   type        = map(map(string))
#   default     = {
#     all = {}
#     default-node-pool = {
#       node-pool-metadata-custom-value = "my-node-pool"
#     }
#   }
# }

variable "node_pools_taints" {
  description = "Marcas para los nodos del clúster"
  type        = map(list(object({
    key    = string
    value  = string
    effect = string
  })))
  default     = {
    all = []
    default-node-pool = [
      {
        key    = "default-node-pool"
        value  = "true"
        effect = "PREFER_NO_SCHEDULE"
      },
    ]
  }
}

# variable "node_pools_tags" {
#   description = "Etiquetas de red para los nodos del clúster"
#   type        = map(list(string))
#   default     = {
#     all = []
#     default-node-pool = [
#       "default-node-pool",
#     ]
#   }
# }