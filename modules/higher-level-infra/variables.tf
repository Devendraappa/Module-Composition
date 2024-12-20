variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_count" {
  description = "Number of public subnets"
  type        = number
}

variable "public_subnets" {
  description = "List of public subnet CIDR blocks"
  type        = list(string)
}

variable "private_subnet_count" {
  description = "Number of private subnets"
  type        = number
}

variable "private_subnets" {
  description = "List of private subnet CIDR blocks"
  type        = list(string)
}