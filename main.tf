terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "nexus_instance" {
  source       = "./ec2_instance"
  ami          = var.aws_ami  # Example AMI ID, replace with your desired AMI
  instance_type = var.aws_type             # Example instance type, replace with your desired type
  instance_name = "nexus"
}

module "sonar_instance" {
  source       = "./ec2_instance"
  ami          = var.aws_ami  # Example AMI ID, replace with your desired AMI
  instance_type = var.aws_type              # Example instance type, replace with your desired type
  instance_name = "sonar"
}

module "test_instance" {
  source       = "./ec2_instance"
  ami          = var.aws_ami  # Example AMI ID, replace with your desired AMI
  instance_type = var.aws_type              # Example instance type, replace with your desired type
  instance_name = "test"
}
