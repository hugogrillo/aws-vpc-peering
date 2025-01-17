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

resource "aws_vpc" "vpc10" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.vpc10.id
  cidr_block        = "10.0.1.0/24"
  map_public_ip_on_launch = true
}