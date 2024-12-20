resource "aws_instance" "app" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
}

output "instance_id" {
  value = aws_instance.app.id
}
