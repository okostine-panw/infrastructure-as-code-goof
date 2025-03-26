resource "aws_s3_bucket" "denied" {
  tags = {
    application = "umbrella"
  }
}

resource "aws_s3_bucket" "denied_2" {
  versioning {}
  tags = {
    application = "umbrella"
  }
}

resource "aws_s3_bucket" "denied_3" {
  versioning {
    enabled = false
  }
  tags = {
    application = "umbrella"
  }
}
