resource "aws_lambda_function" "ec2_lambda" {
  filename         = data.archive_file.lambda_zip.output_path
  function_name    = var.name
  runtime          = "python3.9"
  handler          = "schedule.main.lambda.handler"
  source_code_hash = data.archive_file.lambda_zip.output_base64sha256

  environment {
    variables = {
      Action = var.schedule_action

    }
  }

  tags = var.tags
}
