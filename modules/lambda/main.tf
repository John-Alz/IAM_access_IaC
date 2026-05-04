resource "aws_lambda_function" "lambda_test" {
  filename      = var.zip_path
  function_name = var.function_name
  role          = var.iam_role_arn
  handler       = var.handler
  source_code_hash   = var.source_hash

  environment {
    variables = {
      SECRET_NAME = var.secret_name
    }
  }

  runtime = var.runtime
}