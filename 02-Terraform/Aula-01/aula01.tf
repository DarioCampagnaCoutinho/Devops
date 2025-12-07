
terraform{
  required_version = ">= 0.12"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}


provider "aws" {
  region = "eu-central-1"
}

resource "aws_s3_bucket" "exampledario1234" {
  bucket = "my-tf-test-bucket-dario1234"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby = "Terraform"
  }
}