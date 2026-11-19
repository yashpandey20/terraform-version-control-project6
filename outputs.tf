output "iam_user_name" {
  description = "Created IAM user"
  value       = aws_iam_user.s3_reader.name
}

output "attached_policy" {
  description = "Attached IAM policy"
  value       = var.s3_read_policy
}

output "iam_user_arn" {
  description = "IAM user ARN"
  value       = aws_iam_user.s3_reader.arn
}
