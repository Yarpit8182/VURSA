variable "app_name" {
  type        = string
  description = "Name of the Application"
}

variable "environment" {
  type        = string
  description = "Deployment environment (dev, prod, etc.)"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidrs" {
  type        = list(string)
  description = "CIDR blocks for public subnets"
}

variable "private_subnet_cidrs" {
  type        = list(string)
  description = "CIDR blocks for private subnets"
}
