resource "aws_elasticsearch_domain" "denied" {
  tags = {
    application = "umbrella"
  }
}

resource "aws_elasticsearch_domain" "denied_2" {
  node_to_node_encryption {
    enabled = false
  }
  tags = {
    application = "umbrella"
  }
}


