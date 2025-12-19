terraform {
  backend "s3" {
    bucket         = "vursa-terraform-state"
    key            = "infra/${terraform.workspace}/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}


resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform_locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "iLockIDd"

  attribute {
    name = "LockID"
    type = "S"
  }
}