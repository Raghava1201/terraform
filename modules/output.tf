output "vpc_id" {
    value = var.vpc_id
    description = "value of the vpc"
}

output "cluster_name" {
  value = var.cluster_name
  description = "getting eks cluster id"
}

output "node_group_name" {
  value = var.node_group_name
  description = "getting eks worker node id"
}

output "desired_size" {
    value = var.desired_size
    description = "value of the desired-size"  
}

output "max_size" {
    value = var.max_size
    description = "value of the max-size" 
}

output "min_size" {
    value = var.min_size
    description = "value of the min-size"  
}
