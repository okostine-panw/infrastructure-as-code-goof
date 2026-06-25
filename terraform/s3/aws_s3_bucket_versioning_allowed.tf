resource "aws_s3_bucket" "allowed" {
  versioning {
    enabled = true
  }
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}
