variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "subnets" {
  description = "The list of subnets"
  type        = list(string)
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
