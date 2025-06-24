resource "aws_kms_key" "without-rotation" {
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_kms_key" "with-rotation" {
  enable_key_rotation = true
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}
