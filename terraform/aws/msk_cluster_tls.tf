resource "aws_msk_cluster" "default" {
  tags = {
    application = "umbrella"
  }
}

resource "aws_msk_cluster" "client_tls" {
  encryption_info {
    encryption_in_transit {
      client_broker = "TLS"
    }
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_msk_cluster" "tls" {
  encryption_info {
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_msk_cluster" "in_cluster" {
  encryption_info {
    encryption_in_transit {
      in_cluster = true
    }
  }
  tags = {
    application = "umbrella"
  }
}



