resource "aws_ecr_repository" "denied" {
  name                 = "bar"
  image_tag_mutability = "MUTABLE"
  tags = {
    application = "umbrella"
  }
}

resource "aws_ecr_repository" "denied_2" {
  name                 = "bar"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }

  tags = {
    application = "umbrella"
  }
}
