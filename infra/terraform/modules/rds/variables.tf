variable "db_name" {
    description = "Name for the application"
    type = string
    default = "vursadev"
}

variable "identifier" {
    description = "Name of AWS RDS instance"
    type = string
}

variable "engine" {
    description = "Database Engine"
    type = string
    default = "postgres"
}

variable "engine_version" {
    description = "Engine version"
    type = string
    default = "14.10"
}

variable "instance_class" {
    description = "instance class"
    type = string
    default = "db.t3.medium"
}

variable "allocated_storage" {
    description = "Storage in GB"
    type = number
    default = 50
}
variable "storage_type" {
    description = "storage type"
    type = string
    default = "gp3"
}

variable "username" {
    description = "database master username"
    type = string
}

variable "password" {
    description = "password"
    type = string
    sensitive = true
}

variable "vpc_security_group_ids" {
    description = "security group RDS"
    type = list(string)
}

variable "db_subnet_group_name" {
    description = "subnet group name"
    type = string
}

variable "environment" {
    description = "Environment (dev)"
    type = string
}