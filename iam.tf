resource "aws_iam_role" "lambda_ec2" {
  name = "iam_for_lambda_with_ec2"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Action = [
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:PutLogEvents"
        ],
        Resource = "arn:aws:logs:*:*:*"
      },
      {
        Effect = "Allow",
        Action = [
          "ec2:Start*",
          "ec2:Stop*"
        ],
        Resource = "*"
      }
    ]
  })
}