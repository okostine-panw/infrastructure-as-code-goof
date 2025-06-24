resource "aws_api_gateway_stage" "allowed" {
  xray_tracing_enabled = true
  access_log_settings {
  }
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_api_gateway_stage" "denied" {
  xray_tracing_enabled = true
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_apigatewayv2_stage" "allowed" {
  access_log_settings {
  }
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_apigatewayv2_stage" "denied" {
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}
