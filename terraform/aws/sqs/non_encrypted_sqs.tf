resource "aws_sqs_queue" "sqs" {
  name = "terraform-example-queue"
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}
