variable "region" {
  description = "AWS Region"
  default = "us-east-2"
}

variable "instance_count" {
  description = "Node Sayisi"
  type        = number
  default     = 4
}

variable "ami" {
  description = "AMI"
  default = "ami-00dfe2c7ce89a450b"
}

variable "instance_type" {
  description = "EC2 instance type"
  default = "t2.micro"
}
