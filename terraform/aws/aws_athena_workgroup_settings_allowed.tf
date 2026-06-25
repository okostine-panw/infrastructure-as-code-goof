resource "aws_athena_workgroup" "allowed" {
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_athena_workgroup" "allowed_2" {
  configuration {}
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_athena_workgroup" "allowed_3" {
  configuration {
    enforce_workgroup_configuration = true
  }
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}
