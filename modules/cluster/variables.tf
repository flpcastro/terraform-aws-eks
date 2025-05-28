variable "project_name" {
  type        = string
  description = "Project name to be used for tagging resources"
}

variable "tags" {
  type        = map(any)
  description = "Tags to be applied to all resources"
}