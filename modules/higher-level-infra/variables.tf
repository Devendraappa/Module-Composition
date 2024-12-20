
# VPC Module Inputs
variable "vpc_cidr_block" {
  type = string
}

# EC2 Module Inputs
variable "ami_id" {
  type = string
}
variable "instance_type" {
  type = string
}

variable "key_name" {
  type = string
}

# RDS Module Inputs
variable "rds_allocated_storage" {
  type = number
}
variable "rds_engine" {
  type = string
}
variable "rds_instance_class" {
  type = string
}
variable "rds_db_name" {
  type = string
}
variable "rds_username" {
  type = string
}
variable "rds_password" {
  type = string
}
variable "rds_db_subnet_group" {
  type = string
}
