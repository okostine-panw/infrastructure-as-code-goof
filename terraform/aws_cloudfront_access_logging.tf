resource "aws_cloudfront_distribution" "allowed" {
  web_acl_id = "arn:1234"
  logging_config {}
  tags = {
    application = "umbrella"
  }
}

resource "aws_cloudfront_distribution" "denied" {
  web_acl_id = "arn:1234"
  tags = {
    application = "umbrella"
  }
}
