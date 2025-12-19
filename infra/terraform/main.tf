terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    random = {
        source  =   "hashicorp/random"
        version =   "~> 3.0"
    }
  }
}


provider "aws" {
    region = var.aws_region
}

#--Networking module
module "networking" {
    source = "./modules/networking"

    app_name    = var.app_name
    environment = var.environment
    vpc_cidr    = var.vpc_cidr
    public_subnet_cidr  = var.public_subnet_cidr
    private_subnet_cidrs    = var.private_subnet_cidrs
    aws_lb  = var.aws_lb
}