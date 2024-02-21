resource "aws_ecs_cluster" "allowed" {
  setting {
    name  = "containerInsights"
    value = "enabled"
  }
  tags = {
    application = "umbrella"
  }
}
