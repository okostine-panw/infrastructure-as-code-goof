resource "aws_eks_cluster" "allowed" {
  encryption_config {
    provider  = "x"
    resources = ["y"]
  }
  enabled_cluster_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]
  tags = {
    application = "umbrella"
  }
}

resource "aws_eks_cluster" "allowed_2" {
  encryption_config {
    provider  = "x"
    resources = ["y"]
  }
  enabled_cluster_log_types = ["controllerManager", "scheduler", "api", "audit", "authenticator"]
  tags = {
    application = "umbrella"
  }
}

resource "aws_eks_cluster" "denied" {
  encryption_config {
    provider  = "x"
    resources = ["y"]
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_eks_cluster" "denied_2" {
  encryption_config {
    provider  = "x"
    resources = ["y"]
  }
  enabled_cluster_log_types = ["controllerManager", "scheduler"]
  tags = {
    application = "umbrella"
  }
}


resource "aws_eks_cluster" "denied_3" {
  encryption_config {
    provider  = "x"
    resources = ["y"]
  }
  enabled_cluster_log_types = ["controllerManager", "scheduler", "api"]
  tags = {
    application = "umbrella"
  }
}
