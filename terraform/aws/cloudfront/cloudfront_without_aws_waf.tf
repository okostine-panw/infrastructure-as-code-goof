resource "aws_cloudfront_distribution" "denied" {
  tags = {
    application = "umbrella"
  }
}
