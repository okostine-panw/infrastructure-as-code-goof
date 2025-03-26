resource "aws_s3_bucket" "allowed" {
  versioning {
    mfa_delete = true
  }
  tags = {
    application = "umbrella"
  }
}
