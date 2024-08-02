module "vpc" {
  source = "./vpc-module"

  cidr_block                  = var.cidr_block
  vpc_name                    = var.vpc_name
  vpc_id                      = var.vpc_id
  public_subnet_cidr_block    = var.public_subnet_cidr_block 
  private_subnet_cidr_block   = var.private_subnet_cidr_block
  public_availability_zone    = var.public_availability_zone
  private_availability_zone   = var.private_availability_zone
  public_subnet_name          = var.public_subnet_name
  private_subnet_name         = var.private_subnet_name
  igw_name                    = var.igw_name
  eip_name                    = var.eip_name
  nat_gw_name                 = var.nat_gw_name
  public_rt_name              = var.public_rt_name
  private_rt_name             = var.private_rt_name
  public_nacl_name            = var.public_nacl_name
  private_nacl_name           = var.private_nacl_name
}
