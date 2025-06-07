variable "project_name" {
  type        = string
  description = "Project name to be used for tagging resources"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be applied to all resources"
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name to create MNG"
}

variable "subnet_private_1a" {
  type        = string
  description = "Subnet ID for AZ 1A"
}

variable "subnet_private_1b" {
  type        = string
  description = "Subnet ID for AZ 1B"
}