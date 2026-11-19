
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "iam_username" {
  description = "Name of the IAM user"
  type        = string
  default     = "terraform-s3-reader"
}

variable "s3_read_policy" {
  description = "S3 read-only permissions policy"
  type        = string
  default     = "AmazonS3ReadOnlyAccess"
}
