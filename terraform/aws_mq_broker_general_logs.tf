resource "aws_mq_broker" "allowed" {
  logs {
    general = true
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_mq_broker" "denied" {
  tags = {
    application = "umbrella"
  }
}

resource "aws_mq_broker" "denied_2" {
  logs {
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_mq_broker" "denied_3" {
  logs {
    general = false
  }
  tags = {
    application = "umbrella"
  }
}
