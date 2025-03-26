resource "aws_kms_key" "without-rotation" {
  tags = {
    application = "umbrella"
  }
}

resource "aws_kms_key" "with-rotation" {
  enable_key_rotation = true
  tags = {
    application = "umbrella"
  }
}
