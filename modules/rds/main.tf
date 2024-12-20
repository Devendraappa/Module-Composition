resource "aws_db_instance" "db" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  instance_class       = var.instance_class
  name                 = var.db_name
  username             = var.username
  password             = var.password
  subnet_group_name    = var.db_subnet_group
}

output "db_endpoint" {
  value = aws_db_instance.db.endpoint
}
