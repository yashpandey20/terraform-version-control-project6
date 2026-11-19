
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Create IAM User
resource "aws_iam_user" "s3_reader" {
  name = var.iam_username

  tags = {
    Name        = var.iam_username
    Environment = "Capstone"
    Project     = "IAM-Automation"
  }
}

# Attach S3 Read Only Policy
resource "aws_iam_user_policy_attachment" "s3_read" {
  user = aws_iam_user.s3_reader.name

  policy_arn = "arn:aws:iam::aws:policy/${var.s3_read_policy}"
}
