resource "aws_lambda_function" "denied" {
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_lambda_function" "allowed" {
  tracing_config {
    mode = "PassThrough"
  }
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_lambda_function" "allowed_2" {
  tracing_config {
    mode = "Active"
  }
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}
