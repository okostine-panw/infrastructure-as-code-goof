resource "aws_cloudfront_distribution" "allowed" {
  web_acl_id = "test"
  tags = {
    application = "umbrella"
  }
}
