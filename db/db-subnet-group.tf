resource "aws_db_subnet_group" "main" {
  name       = "mydb-subnet-group"
  subnet_ids = var.subnets
}
