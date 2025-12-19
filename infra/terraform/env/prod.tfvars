app_name    = "vursaprod"
environment = "prod"
aws_region  = "us-east-1"

domain_name        = "vursa.ai"
notification_email = "jmaslek@cia.ai"
bastion_public_key = "ssh-rsa AAAA..."

vpc_cidr           = "10.0.0.0/16"
public_subnet_cidr = []
private_subnet_cidrs = []
certificate_arn = "arn:aws:acm:us-east-1:xxxx"
