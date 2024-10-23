terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.70"
    }
  }
  backend "s3" {
    bucket         = "staticsitelbmulticloudtfhugogrillo"
    key            = "terraform.tfstate"
    dynamodb_table = "staticsitelbmulticloudtfhugogrillo"
    region         = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}