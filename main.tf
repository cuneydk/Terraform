terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region  = "${var.region}"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = "10.0.0.0/16"

  azs             = ["${var.region}a", "${var.region}b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  #enable_nat_gateway = true
  #enable_vpn_gateway = true

  tags = {
    Terraform = "true"
  }
}

module "ec2_instances"  {
 #resource "aws_instance" "ec2" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-node"
  instance_count         = var.instance_count

  ami                    = "${var.ami}"
  instance_type          = "${var.instance_type}"
  key_name               = "ec2"
  monitoring             = true
  user_data              = "${file("scripts/bootstrap.sh")}"
  subnet_id              = module.vpc.public_subnets[0]
  
  depends_on = [module.vpc]

  tags = {
    Terraform   = "true"
  }
}