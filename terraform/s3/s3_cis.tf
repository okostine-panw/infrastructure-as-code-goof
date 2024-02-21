resource "aws_s3_bucket" "writable" {
  bucket = "writable"
  acl    = "public-read-write"
  tags = {
    application = "umbrella"
  }
}

resource "aws_s3_bucket" "readable" {
  bucket = "readable"
  acl    = "public-read"
  tags = {
    application = "umbrella"
  }
}
