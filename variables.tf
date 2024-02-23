variable "ecs_cluster_name" {
  type = string
}

variable "logging" {
  type = string
}

variable "cloud_watch_encryption_enabled" {
  type = bool
}

variable "containerInsights" {
  type = string
}

variable "tags" {
  type = map(string)
}