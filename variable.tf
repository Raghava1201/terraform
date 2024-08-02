variable "aws_access_key" {
  description = "Access key"
  type        = string
}

variable "aws_secret_key" {
  description = "secretkey"
  type        = string
}

variable "aws_region" {
  description = "Region of aws"
  type        = string
}

############################################################################################################

variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
}

variable "public_subnet_cidr_block" {
  description = "The CIDR block for the public subnet."
  type        = string
}

variable "private_subnet_cidr_block" {
  description = "The CIDR block for the private subnet."
  type        = string
}

variable "public_availability_zone" {
  description = "The availability zone for the public subnet."
  type        = string
}

variable "private_availability_zone" {
  description = "The availability zone for the private subnet."
  type        = string
}

variable "public_subnet_name" {
  description = "The name of the public subnet."
  type        = string
}

variable "private_subnet_name" {
  description = "The name of the private subnet."
  type        = string
}

variable "igw_name" {
  description = "The name of the internet gateway."
  type        = string
}

variable "eip_name" {
  description = "The name of the Elastic IP."
  type        = string
}

variable "nat_gw_name" {
  description = "The name of the NAT gateway."
  type        = string
}

variable "public_rt_name" {
  description = "The name of the public route table."
  type        = string
}

variable "private_rt_name" {
  description = "The name of the private route table."
  type        = string
}

variable "public_nacl_name" {
  description = "The name of the public network ACL."
  type        = string
}

variable "private_nacl_name" {
  description = "The name of the private network ACL."
  type        = string
}

variable "vpc_id" {
  description = "The name of the VPC."
  type        = string
}
