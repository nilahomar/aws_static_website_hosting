terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "aws-terraform-backend-state-nila"
    key    = "aws_static_website_hosting/terraform.tfstate"
    region = "eu-central-1"
  }
}
provider "aws" {
  region = "eu-central-1"
}
