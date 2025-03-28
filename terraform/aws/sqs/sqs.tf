resource "aws_sqs_queue" "sqs" {
  name                              = "terraform-example-queue"
  kms_master_key_id                 = "alias/aws/sqs"
  kms_data_key_reuse_period_seconds = 300
  tags = {
    application = "umbrella"
  }
}
