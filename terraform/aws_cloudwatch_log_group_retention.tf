resource "aws_cloudwatch_log_group" "allowed" {
  retention_in_days = 0
  tags = {
    application = "umbrella"
  }
}

resource "aws_cloudwatch_log_group" "allowed_2" {
  retention_in_days = 365
  tags = {
    application = "umbrella"
  }
}

resource "aws_cloudwatch_log_group" "denied" {
  tags = {
    application = "umbrella"
  }
}
