resource "aws_lambda_function" "allowed" {
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_lambda_function" "allowed_2" {
  environment {
    variables = {
      foo = "bar"
    }
  }
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}
