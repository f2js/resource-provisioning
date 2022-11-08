variable "region" {
    type = string
    default = "ams3"
}

variable "node_count" {
  type = number
  default = 1
}

variable "node_size" {
    type = string
    default = "s-1vcpu-2gb"
}

variable "kubernetes_version" {
    type = string
    default = "1.24.4-do.0"
}

resource "digitalocean_kubernetes_cluster" "foo" {
  name   = "exam-cluster-${var.region}"
  region = var.region
  # Grab the latest version slug from `doctl kubernetes options versions`
  version = var.kubernetes_version

  node_pool {
    name       = "worker-pool-${var.region}"
    size       = var.node_size
    node_count = var.node_count

    taint {
      key    = "workloadKind"
      value  = "database"
      effect = "NoSchedule"
    }
  }
}