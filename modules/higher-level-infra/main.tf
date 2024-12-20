
module "vpc" {
  source      = "../vpc"
  cidr_block  = var.vpc_cidr_block
}

module "ec2" {
  source        = "../ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
}
/*
module "rds" {
  source             = "../rds"
  allocated_storage  = var.rds_allocated_storage
  engine             = var.rds_engine
  instance_class     = var.rds_instance_class
  db_name            = var.rds_db_name
  username           = var.rds_username
  password           = var.rds_password
  db_subnet_group    = var.rds_db_subnet_group
}

*/
