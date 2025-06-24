resource "aws_kinesis_stream" "denied" {
  name            = "terraform-kinesis-test"
  encryption_type = "NONE"
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_kinesis_stream" "denied_2" {
  name = "terraform-kinesis-test"
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}
