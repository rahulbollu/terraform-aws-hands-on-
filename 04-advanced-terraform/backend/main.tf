# -----------------------------
# Backend infrastructure setup
# -----------------------------
provider "aws" {
  region = "us-east-1"
}

# S3 bucket to store Terraform state
resource "aws_s3_bucket" "terraform_state" {
  bucket = "my-terraform-state-bucket-demo"
  acl    = "private"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name        = "terraform-state"
    Environment = "shared"
  }
}

# DynamoDB table for state locking
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "terraform-lock-table"
  }
}
