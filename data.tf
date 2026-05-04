data "archive_file" "file_for_lambda" {
  type        = "zip"
  source_file = "${path.root}/lambda/index.js"
  output_path = "${path.root}/lambda/function.zip"
}
