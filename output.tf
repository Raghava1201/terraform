output "vpc_id" {
  value = module.eks.vpc_id
  description = "getting vpc id"
}

output "cluster_name" {
  value = module.eks.cluster_name
  description = "getting eks cluster id"
}

output "node_group_name" {
  value = module.eks.node_group_name
  description = "getting eks worker node"
}

output "desired_size" {
  value = module.eks.desired_size
  description = "getting desrired size"
}

output "max_size" {
  value = module.eks.max_size
  description = "getting max size"
}

output "min_size" {
  value = module.eks.min_size
  description = "getting min size"
}
