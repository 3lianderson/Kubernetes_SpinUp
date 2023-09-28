resource "aws_key_pair" "aws-key"{
  key_name   = var.public-key-name
  public_key = var.public-key
}

resource "aws_instance" "kubernetes-worker" {
  ami           = var.image-id
  instance_type = var.instance-type
  key_name      = var.public-key-name
  count         = 2
  tags = {
    Name = "k8s-worker"
    Type = "worker"
  }
  security_groups = ["${aws_security_group.k8s-sg.name}"]
}

resource "aws_instance" "kubernetes-master" {
  ami           = var.image-id
  instance_type = var.instance-type
  key_name      = var.public-key-name
  count         = 1
  tags = {
    Name = "k8s-master"
    Type = "master"
  }
  security_groups = ["${aws_security_group.k8s-sg.name}"]
}
