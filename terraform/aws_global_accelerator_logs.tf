resource "aws_globalaccelerator_accelerator" "allowed" {
  attributes {
    flow_logs_enabled = true
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_globalaccelerator_accelerator" "denied" {
  attributes {
    flow_logs_enabled = false
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_globalaccelerator_accelerator" "denied_2" {
  tags = {
    application = "umbrella"
  }
}
