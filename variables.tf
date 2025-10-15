variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "devopsshack-cluster"
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  type        = string
  default     = "1.30"
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
  default     = "10.0.0.0/16"
}

variable "az_count" {
  description = "Number of AZs to use"
  type        = number
  default     = 2
}

variable "node_types" {
  description = "Instance types for worker nodes"
  type        = list(string)
  default     = ["m7i-flex.large"]
}

variable "node_desired" {
  description = "Desired node count"
  type        = number
  default     = 3
}

variable "node_min" {
  description = "Minimum node count"
  type        = number
  default     = 3
}

variable "node_max" {
  description = "Maximum node count"
  type        = number
  default     = 5
}

variable "node_disk_gib" {
  description = "Node root volume size (GiB)"
  type        = number
  default     = 30
}

variable "tags" {
  description = "Common resource tags"
  type        = map(string)
  default = {
    Project   = "DevOpsShack"
    ManagedBy = "Terraform"
  }
}

