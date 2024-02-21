resource "aws_elasticsearch_domain" "denied" {
  cluster_config {
    instance_type = "c5.large.elasticsearch"
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_elasticsearch_domain" "denied_2" {
  cluster_config {
    instance_type = "c5.large.elasticsearch"
  }

  encrypt_at_rest {
    enabled = false
  }
  tags = {
    application = "umbrella"
  }
}


