resource "aws_elasticache_replication_group" "denied" {
  tags = {
    application = "umbrella"
  }
}

resource "aws_elasticache_replication_group" "denied_2" {
  at_rest_encryption_enabled = false
  tags = {
    application = "umbrella"
  }
}

