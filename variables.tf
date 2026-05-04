variable "region" {
  type = string
  default = "us-east-1"
}

variable "secret_name" {
  description = "Name of the secret"
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