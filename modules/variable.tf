variable "cluster_name" {
  description = "value for the eks-cluster"
  type = string
}

variable "desired_size"{
  description = "value for the scaling-config"
  type = string
}

variable "max_size" {
  description = "value of the max-size"
  type = string
}

variable "min_size" {
  description = "value of the min-size"
  type = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "vpc_id" {
  description = "The name of the VPC"
  type        = string
}

variable "public_subnet_cidr_block" {
  description = "The CIDR block for the public subnet"
  type        = string
}


variable "private_subnet_cidr_block" {
  description = "The CIDR block for the private subnet"
  type        = string
}

variable "public_availability_zone" {
  description = "The availability zone for the public subnet"
  type        = string
}

variable "private_availability_zone" {
  description = "The availability zone for the private subnet"
  type        = string
}

variable "public_subnet_name" {
  description = "The name of the public subnet"
  type        = string
}

variable "private_subnet_name" {
  description = "The name of the private subnet"
  type        = string
}

variable "lms_eip_name" {
  description = "The name of the Elastic IP"
  type        = string
}

variable "node_group_name" {
  description = "The name of the EKS node group"
  type        = string
}
variable "nat_gw_name"{
  description ="The name of the nat-gatwway"
  type = string
}
