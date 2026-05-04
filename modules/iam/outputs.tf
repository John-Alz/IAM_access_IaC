output "iam_role_arn" {
  value = aws_iam_role.role_for_secret.arn
}