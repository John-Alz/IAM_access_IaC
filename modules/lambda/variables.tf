variable "iam_role_arn" {
  description = "AWS IAM role ARN"
  type = string
}

variable "secret_name" {
  description = "AWS Secrets Manager secret name"
  type = string
}

variable "function_name" {
  description = "Lambda function name"
  type = string
}

variable "handler" {
  description = "Lambda function handler"
  type = string
}

variable "runtime" {
  description = "Lambda function runtime"
  type = string
}

variable "zip_path" {
  description = "Path to lambda function zip file"
  type = string
}

variable "source_hash" {
  description = "Hash of lambda function zip file"
  type = string
}