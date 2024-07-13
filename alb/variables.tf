variable "vpc_id" {
  description = "The ID of the VPC"
}

variable "subnets" {
  description = "The list of subnets"
  type        = list(string)
}
