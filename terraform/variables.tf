variable "aws-region" {
  type        = string
  description = "Region used to bootstrap the cluster"
}

variable "public-key-name" {
  type        = string
  description = "Public Key Name used to bootstrap the cluster"
}

variable "public-key" {
  type        = string
  description = "Public Key used to bootstrap the cluster"
}

variable "image-id" {
  type        = string
  description = "Image Id used to bootstrap the cluster"

}

variable "instance-type" {
  type = string
  description = "Instance Type used to bootstrap the cluster"
}