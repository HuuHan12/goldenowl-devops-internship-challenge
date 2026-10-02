variable "aws_region" {
  type    = string
  default = "ap-southeast-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "docker_image" {
  type    = string
  default = "huuhan16/goldenowl-app:latest"
}

variable "app_port" {
  type    = number
  default = 3000
}

variable "domain_name" {
  type    = string
  default = "terraform.rene-devops.online"
}
