variable "name" {
  description = "Define name to use for the lambda function, cloudwatch log and iam role"
  type        = string
  value       = "ryans-test"
}

variable "tags" {
  description = "Custome tags on aws resources"
  type        = map(any)
  default = {
    Name = "ryans-test"
  }
}

variable "ec2_schedule" {
  description = "Enable scheduling on ec2 resources"
  type        = any
  default     = false
}
