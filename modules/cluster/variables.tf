variable "project_name" {
  type        = string
  description = "Project name to be used for tagging resources"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be applied to all resources"
}

variable "public_subnet_1a" {
  type        = string
  description = "Subnet to create EKS cluster AZ 1a"
}

variable "public_subnet_1b" {
  type        = string
  description = "Subnet to create EKS cluster AZ 1b"
}