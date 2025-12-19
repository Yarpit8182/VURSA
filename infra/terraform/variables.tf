variable "app_name" {
  description = "Application name prefix"
  type = string
}

variable "environment" {
  description = "Environment name (dev, prod, etc.)"
  type = string
}

variable "domain_name" {
  description = "Primary domain for this environment"
  type = string
}

variable "aws_region" {
  description = "AWS region"
  type = string
}

variable "notification_email" {
  description = "Email for budget/alert"
  type = string
}

variable "bastion_public_key" {
  description = "SSH public key for bastion (used in prod)"
  type = string
  default = ""
}
variable "aws_lb" {
  description = "Name of Application Load Balancer"
  type = string
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type = string
}

variable "public_subnet_cidr" {
  description = "public subnet CIDRs"
  type = list(string)
}

variable "private_subnet_cidrs" {
    description = "private subnets CIDRs"
    type = list(string)
}

variable "certificate_arn" {
  type = string
}
