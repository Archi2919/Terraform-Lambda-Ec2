resource "aws_cloudwatch_log_group" "lambda_log" {
  name              = "/aws/lambda/${var.name}"
  retention_in_days = 7
  tags              = var.tags
}
