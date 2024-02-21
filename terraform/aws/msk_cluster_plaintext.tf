resource "aws_msk_cluster" "client_plaintext" {
  encryption_info {
    encryption_in_transit {
      client_broker = "PLAINTEXT"
    }
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_msk_cluster" "in_cluster" {
  encryption_info {
    encryption_in_transit {
      in_cluster = false
    }
  }
  tags = {
    application = "umbrella"
  }
}
