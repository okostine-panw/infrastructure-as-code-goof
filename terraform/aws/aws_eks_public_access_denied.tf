resource "aws_eks_cluster" "denied" {
  vpc_config {
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_eks_cluster" "denied_2" {
  vpc_config {
    endpoint_public_access = true
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_eks_cluster" "denied_3" {
  vpc_config {
    public_access_cidrs = ["0.0.0.0/0"]
  }
  tags = {
    application = "umbrella"
  }
}

resource "aws_eks_cluster" "denied_4" {
  vpc_config {
    endpoint_public_access = true
    public_access_cidrs    = ["0.0.0.0/0"]
  }
  tags = {
    application = "umbrella"
  }
}
