resource "aws_instance" "unencrypted" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  tags = {
    Name        = "HelloWorld"
    application = "umbrella"
  }
  metadata_options {
    http_tokens = "required"
  }
}
