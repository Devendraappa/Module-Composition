module "vpc" {
  source              = "../vpc"
  cidr_block          = var.vpc_cidr_block
  public_subnet_count = var.public_subnet_count
  public_subnets      = var.public_subnets
  private_subnet_count = var.private_subnet_count
  private_subnets     = var.private_subnets
}
