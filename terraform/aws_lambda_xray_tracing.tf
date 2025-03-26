resource "aws_lambda_function" "denied" {
  tags = {
    application = "umbrella"
  }
}

resource "aws_lambda_function" "allowed" {
  tracing_config {
    mode = "PassThrough"
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_lambda_function" "allowed_2" {
  tracing_config {
    mode = "Active"
  }
  tags = {
    application = "umbrella"
  }
}
