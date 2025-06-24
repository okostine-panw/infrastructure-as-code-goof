resource "aws_elasticsearch_domain" "denied" {
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_elasticsearch_domain" "denied_2" {
  domain_endpoint_options {
    enforce_https = false
  }
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}
