resource "aws_athena_workgroup" "allowed" {
  tags = {
    application = "umbrella"
  }
}

resource "aws_athena_workgroup" "allowed_2" {
  configuration {}
  tags = {
    application = "umbrella"
  }
}

resource "aws_athena_workgroup" "allowed_3" {
  configuration {
    enforce_workgroup_configuration = true
  }
  tags = {
    application = "umbrella"
  }
}
