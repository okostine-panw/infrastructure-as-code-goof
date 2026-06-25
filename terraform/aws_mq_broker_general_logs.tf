resource "aws_mq_broker" "allowed" {
  logs {
    general = true
  }
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_mq_broker" "denied" {
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_mq_broker" "denied_2" {
  logs {
  }
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_mq_broker" "denied_3" {
  logs {
    general = false
  }
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}
