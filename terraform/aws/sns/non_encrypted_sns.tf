resource "aws_sns_topic" "sns" {
  name = "user-updates-topic"
  tags = {
    application = "umbrella"
  }
}
