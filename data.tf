data "archive_file" "lambda" {
  type             = zip
  source_dir       = "./src/lambda.py"
  output_file_mode = "0666"
  output_path      = "./bin/lambda.zip"
}
