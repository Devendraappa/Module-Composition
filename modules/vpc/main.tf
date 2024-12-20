resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
}

resource "aws_subnet" "public" {
  count      = var.public_subnet_count
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.public_subnets, count.index)
}

resource "aws_subnet" "private" {
  count      = var.private_subnet_count
  vpc_id     = aws_vpc.main.id
  cidr_block = element(var.private_subnets, count.index)
}
