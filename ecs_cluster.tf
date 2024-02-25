# Module ECS Cluster
resource "aws_ecs_cluster" "this" {
  name = var.ecs_cluster_name

  configuration {
    execute_command_configuration {

      logging = var.logging

      log_configuration {
        cloud_watch_encryption_enabled = var.cloud_watch_encryption_enabled
        cloud_watch_log_group_name     = aws_cloudwatch_log_group.this.name
      }
    }
  }

  setting {
    name  = "containerInsights"
    value = var.containerInsights
  }
  tags = var.tags

}