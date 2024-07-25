module "eks" {
  source = "./modules"
  
  cluster_name   = "lms-eks-cluster"
  node_group_name = "eks_worker_nodes"
  desired_size = 2
  max_size = 2
  min_size = 1
  
  cidr_block                 = "10.0.0.0/16"
  vpc_name                   = "lms_vpc"
  vpc_id                     = "lms_vpc"
  public_subnet_cidr_block   = "10.0.1.0/24"
  private_subnet_cidr_block  = "10.0.3.0/24"
  public_availability_zone   = "us-east-1a"
  private_availability_zone  = "us-east-1b"
  public_subnet_name         = "lms_public_sn"
  private_subnet_name        = "lms_private_sn"
  lms_eip_name               = "lms_eip"
  nat_gw_name                = "lms_nat_gw"
}
