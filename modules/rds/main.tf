resource "aws_db_instance" "default" {
  allocated_storage     = var.allocated_storage
  engine                = var.engine
  instance_class        = var.instance_class
  db_name               = var.db_name
  username              = var.username
  password              = var.password
  parameter_group_name  = var.parameter_group_name
  skip_final_snapshot   = var.skip_final_snapshot
}
