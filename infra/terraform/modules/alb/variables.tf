variable "alb_name" {
  type        = string
  description = "Name of the Application Load Balancer"
}

variable "internal" {
  type        = bool
  description = "Whether ALB is internal or internet-facing"
  default     = false
}

variable "security_group_ids" {
  type        = list(string)
  description = "Security groups for ALB"
}

variable "public_subnet_ids" {
  type        = list(string)
  description = "Subnets for ALB"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "target_group_name" {
  type        = string
  description = "Target group name"
}

variable "target_port" {
  type        = number
  description = "Target group port"
  default     = 80
}

variable "target_type" {
  type        = string
  description = "Target type for target group"
  default     = "instance"
}

variable "health_check_path" {
  type        = string
  description = "Health check path"
  default     = "/health"
}

variable "certificate_arn" {
  type        = string
  description = "ACM certificate ARN for HTTPS listener"
  default     = null
}

variable "ssl_policy" {
  type        = string
  description = "SSL policy for HTTPS listener"
  default     = "ELBSecurityPolicy-2016-08"
}
