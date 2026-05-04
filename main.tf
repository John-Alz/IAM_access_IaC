module "secret_manager" {
  source      = "./modules/secretManager"
  secret_name = var.secret_name
}

module "iam_role" {
  source     = "./modules/iam"
  secret_arn = module.secret_manager.secret_arn
}

module "lambda" {
  source        = "./modules/lambda"
  zip_path      = data.archive_file.file_for_lambda.output_path
  source_hash   = data.archive_file.file_for_lambda.output_base64sha256
  iam_role_arn  = module.iam_role.iam_role_arn
  secret_name   = module.secret_manager.secret_name
  function_name = var.function_name
  handler       = var.handler
  runtime       = var.runtime
}
