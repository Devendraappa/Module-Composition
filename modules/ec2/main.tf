resource "aws_instance" "web" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = element(var.subnet_ids, count.index)

  tags = {
    Name = "WebServerInstance"
  }
