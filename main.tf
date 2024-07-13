provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "3.13.0"
  
  name = "my-vpc"
  cidr = "10.0.0.0/16"
  
  azs             = ["us-east-1a", "us-east-1b"]
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
  
  enable_nat_gateway = true
}

module "ecs" {
  source = "./ecs"
  vpc_id = module.vpc.vpc_id
  subnets = module.vpc.private_subnets
}

module "alb" {
  source = "./alb"
  vpc_id = module.vpc.vpc_id
  subnets = module.vpc.public_subnets
}

module "db" {
  source = "./db"
  vpc_id = module.vpc.vpc_id
  subnets = module.vpc.private_subnets

  db_name     = var.db_name
  db_user     = var.db_user
  db_password = var.db_password
}
