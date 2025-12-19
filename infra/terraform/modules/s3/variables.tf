variable "bucket_name" {
  description = "Name of the S3 bucket for user documents"
  type        = string
}

variable "environment" {
  description = "Environment name (dev, prod, stage)"
  type        = string
}

variable "tags" {
  description = "Common tags to apply to the S3 bucket"
  type        = map(string)
  default     = {}
}

variable "enable_versioning" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = true
}

variable "block_public_access" {
  description = "Whether to block all public access to the S3 bucket"
  type        = bool
  default     = true
}
