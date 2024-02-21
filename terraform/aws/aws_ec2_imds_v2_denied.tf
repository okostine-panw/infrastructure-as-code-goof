resource "aws_instance" "denied" {
  tags = {
    application = "umbrella"
  }
}

resource "aws_instance" "denied_2" {
  metadata_options {
    http_endpoint = "enabled"
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_instance" "denied_3" {
  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "optional"
  }
  tags = {
    application = "umbrella"
  }
}
