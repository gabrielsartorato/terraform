# Versão Terraform
terraform {
  required_version = ">= 1.1.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.11.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.1.3"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}


