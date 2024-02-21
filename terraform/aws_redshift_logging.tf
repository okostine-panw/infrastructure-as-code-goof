resource "aws_redshift_cluster" "allowed" {
  encrypted = true
  logging {
    enabled = true
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_redshift_cluster" "denied" {
  encrypted = true
  logging {
    enabled = false
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_redshift_cluster" "denied_2" {
  encrypted = true
  tags = {
    application = "umbrella"
  }
}
