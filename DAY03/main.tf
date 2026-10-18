terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-2"
}

#create a s3 bucket
resource "aws_s3_bucket" "first_bucket" {
  bucket = "austin-terraform-lab-2026-73921"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
