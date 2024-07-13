variable "aws_region" {
  description = "The AWS region to deploy resources in"
  default     = "us-east-1"
}
variable "db_name" {
  description = "The name of the database"
}

variable "db_user" {
  description = "The database admin username"
}

variable "db_password" {
  description = "The database admin password"
  sensitive   = true
}