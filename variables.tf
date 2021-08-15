variable "region" {
  description = "AWS Region"
  default = "us-east-2"
}

variable "instance_count" {
  description = "Node Sayisi"
  type        = number
  default     = 2
}

variable "ami" {
  description = "AMI"
  default = "ami-0277b52859bac6f4b"
}

variable "instance_type" {
  description = "EC2 instance type"
  default = "t2.micro"
}
