module "vpc" {
  source              = "../vpc"
  cidr_block          = var.vpc_cidr_block
  public_subnet_count = var.public_subnet_count
  public_subnets      = var.public_subnets
  private_subnet_count = var.private_subnet_count
  private_subnets     = var.private_subnets
}

module "ec2" {
  source         = "../ec2"
  vpc_id         = module.vpc.vpc_id
  subnet_ids     = module.vpc.public_subnet_ids
  instance_count = var.instance_count
  ami            = var.ami
  instance_type  = var.instance_type
  availability_zone = var.availability_zone
}

module "rds" {
  source                = "../rds"
  allocated_storage     = var.allocated_storage
  engine                = var.engine
  instance_class        = var.instance_class
  db_name               = var.db_name
  username              = var.username
  password              = var.password
  parameter_group_name  = var.parameter_group_name
  skip_final_snapshot   = var.skip_final_snapshot
}
