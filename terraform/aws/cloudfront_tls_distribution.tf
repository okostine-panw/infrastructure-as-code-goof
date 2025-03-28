resource "aws_cloudfront_distribution" "default" {
  viewer_certificate {
    cloudfront_default_certificate = true
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_cloudfront_distribution" "tls" {
  viewer_certificate {
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2019"
    ssl_support_method             = "sni-only"
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_cloudfront_distribution" "required" {
  viewer_certificate {
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1"
    ssl_support_method             = "vip"
  }
  tags = {
    application = "umbrella"
  }
}






