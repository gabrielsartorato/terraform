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
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-wefwefwefwe"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Owner       = "Gabriel Sartorato"
    UpdatedAt   = "2022-04-26"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.my-test-bucket.id
  acl    = "private"
}