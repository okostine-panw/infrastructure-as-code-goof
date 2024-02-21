resource "aws_msk_cluster" "allowed" {
  logging_info {
    broker_logs {
      cloudwatch_logs {
        enabled = true
      }
    }
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_msk_cluster" "allowed_2" {
  logging_info {
    broker_logs {
      firehose {
        enabled = true
      }
    }
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_msk_cluster" "allowed_3" {
  logging_info {
    broker_logs {
      s3 {
        enabled = true
      }
    }
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_msk_cluster" "allowed_4" {
  logging_info {
    broker_logs {
      cloudwatch_logs {
        enabled = false
      }
      s3 {
        enabled = true
      }
    }
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_msk_cluster" "denied" {
  tags = {
    application = "umbrella"
  }
}


resource "aws_msk_cluster" "denied_2" {
  logging_info {
    broker_logs {
      cloudwatch_logs {
        enabled = false
      }
    }
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_msk_cluster" "denied_3" {
  logging_info {
    broker_logs {
      firehose {
        enabled = false
      }
    }
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_msk_cluster" "denied_4" {
  logging_info {
    broker_logs {
      s3 {
        enabled = false
      }
    }
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_msk_cluster" "denied_5" {
  logging_info {
    broker_logs {
      cloudwatch_logs {
      }
    }
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_msk_cluster" "denied_6" {
  logging_info {
    broker_logs {
    }
  }
  tags = {
    application = "umbrella"
  }
}


