app_name    = "vursadev"
environment = "dev"
region      = "us-east-1"

domain_name        = "vursa.ai"
notification_email = "jmaslek@cia.ai"
bastion_public_key = "ssh-rsa AAAA..."

vpc_cidr           = "10.0.0.0/16"
public_subnet_cidr = []
private_subnet_cidrs = []
certificate_arn = "arn:aws:acm:us-east-1:xxxx"

#S3 user docs
bucket_name         = "vursa-user-docs-dev"
environment         = "dev"
enable_versioning   = true
block_public_access = true

tags = {
  Project = "user-docs"
  Owner   = "backend-team"
}

