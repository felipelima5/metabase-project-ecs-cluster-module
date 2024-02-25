# CREATE A ECS Cluster Fargate
### How to Use the ECS Cluster Terraform Module


<details><summary>Mandatory ECS Cluster Requirements</summary>
<p>

### create file ecs_cluster.tf  
```
module "ecs_cluster_01" {
    source = "git@github.com:felipelima5/metabase-project-ecs-cluster-module.git?ref=v1.0.0"

    ecs_cluster_name               = "empresa_01"
    logging                        = "OVERRIDE"
    cloud_watch_encryption_enabled = true
    containerInsights              = "enabled"
    tags = {
      env       = "dev"
      ManagedBy = "IaC"
    }
}

```