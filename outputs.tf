output "role_arn" {
  value       = aws_iam_role.tag_role.arn
  description = "Tag role ARN."
}

output "access_key_id" {
  value       = aws_iam_access_key.tag_access_key.id
  description = "Tag user access key ID."
}

output "secret_access_key" {
  value       = aws_iam_access_key.tag_access_key.secret
  description = "Tag user secret access key."
}
