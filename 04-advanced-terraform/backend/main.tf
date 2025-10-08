###########################################
# AWS Provider
###########################################
provider "aws" {
  region = "us-east-1"
}

###########################################
# S3 Bucket for Terraform State
###########################################
resource "aws_s3_bucket" "terraform_state" {
  bucket = "my-terraform-state-bucket-demo"

  tags = {
    Name        = "terraform-state"
    Environment = "shared"
  }
}

# Enable Versioning for S3 bucket (new syntax)
resource "aws_s3_bucket_versioning" "state_versioning" {
  bucket = aws_s3_bucket.terraform_state.id

  versioning_configuration {
    status = "Enabled"
  }
}

# Block all public access (recommended)
resource "aws_s3_bucket_public_access_block" "block_public_access" {
  bucket                  = aws_s3_bucket.terraform_state.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

###########################################
# DynamoDB Table for State Locking
###########################################
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "terraform-locks"
  }
}
