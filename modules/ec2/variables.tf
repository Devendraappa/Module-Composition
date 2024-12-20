variable "vpc_id" {
  description = "The VPC ID"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "instance_count" {
  description = "Number of EC2 instances"
  type        = number
}

variable "ami" {
  description = "AMI ID for the EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instances"
  type        = string
}

variable "availability_zone" {
  description = "The Availability Zone to launch the instance in"
  type        = string
  default     = "ap-south-1c"  # Specify a supported Availability Zone
}
