resource "aws_api_gateway_stage" "denied" {
  tags = {
    application = "umbrella"
  }
}

resource "aws_api_gateway_stage" "denied_2" {
  xray_tracing_enabled = false
  tags = {
    application = "umbrella"
  }
}
