# Versão Terraform
terraform {
  required_version = ">= 1.1.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.11.0"
    }
  }

}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_instance" "test_instace_ecs_gabriel" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.instace_tags
}