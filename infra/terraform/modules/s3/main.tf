#User documents S3 bucket
resource "aws_s3_bucket" "user_docs" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = var.environment
  }
}

#Configure bucket settings
resource "aws_s3_bucket_versioning" "user_docs" {
  bucket = aws_s3_bucket.user_docs.id
  versioning_configuration {
    status = "Enabled" #Enable versioning for document recovery
  }
}


#Block public access to the bucket
resource "aws_s3_bucket_public_access_block" "user_docs" {
  bucket = aws_s3_bucket.user_docs.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
hgvjgj