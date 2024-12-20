variable "allocated_storage" {
  description = "The allocated storage in gigabytes"
  type        = number
}

variable "engine" {
  description = "The database engine to use"
  type        = string
  default     = "mysql"
}

variable "instance_class" {
  description = "The instance type of the RDS instance"
  type        = string
  default     = "db.t3.micro"  # Change to a supported instance type
}

variable "db_name" {
  description = "The name of the database"
  type        = string
}

variable "username" {
  description = "The username for the database"
  type        = string
}

variable "password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}

variable "parameter_group_name" {
  description = "The name of the DB parameter group to associate"
  type        = string
  default     = "default.mysql8.0"  # Ensure this is a supported parameter group
}

variable "skip_final_snapshot" {
  description = "Determines whether a final DB snapshot is created before the DB instance is deleted"
  type        = bool
}
