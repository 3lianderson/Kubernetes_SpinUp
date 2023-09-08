variable "aws-region" {
  type    = string
  default = "us-east-1"
}

variable "public-key-name" {
  type = string
  default = "aws-key"
}

variable "public-key" {
  type = string
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDc3HnNYlQY5PUi7iR9wZ8Us1qNavyiIqm+2FchtMA1b2q1O6QyseQej510NPq7uYWki3MCtKAoLbBUz/XPGS+JMPg4C5OrYmeofw78SSBPo6W9P9BXmUXG3zE+dWGJDQyrsZIww9Q178bSmUyeK8bqmIauj8sE1k0WjrfQC8a8ih6BC5BPvrpylly1GEvgD+fONLqr8uc+040LixRvIGdQIyZcFvR0Wf0dRE4apY216vFyu4lohPfkkJKUasCOSZ4OUxWesuaW+7iIXxnjr5s8YGBOX48cm9A2iWXJrmtIDslKIAk7NUkZ1FukFyrqMUNp+yvTrcr3gzAIOOdLvZA5"
}

variable "image-id" {
  type = string
  default = "ami-0261755bbcb8c4a84"
}

