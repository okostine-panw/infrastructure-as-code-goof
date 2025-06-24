resource "aws_instance" "allowed" {
  metadata_options {
    http_tokens = "required"
  }
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_instance" "allowed_2" {
  metadata_options {
    http_endpoint = "disabled"
  }
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_instance" "allowed_3" {
  metadata_options {
    http_endpoint = "disabled"
    http_tokens   = "optional"
  }
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}
