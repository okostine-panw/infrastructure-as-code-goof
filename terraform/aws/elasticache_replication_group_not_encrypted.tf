resource "aws_elasticache_replication_group" "denied" {
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_elasticache_replication_group" "denied_2" {
  at_rest_encryption_enabled = false
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

