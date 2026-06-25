resource "aws_elasticsearch_domain" "denied" {
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_elasticsearch_domain" "denied_2" {
  cluster_config {
    instance_type = "t2.micro.elasticsearch"
  }
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}
