resource "aws_ecs_cluster" "denied" {
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_ecs_cluster" "denied_2" {
  setting {
    name  = "containerInsights"
    value = "disabled"
  }
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}

resource "aws_ecs_cluster" "denied_3" {
  setting {
    name  = "containerInsights"
    value = "disabled"
  }

  setting {
    name  = "someOtherValue"
    value = "disabled"
  }
  tags = {
    application = "umbrella"
    git_org     = "okostine-panw"
  }
}
