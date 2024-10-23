provider "aws" {
  region = "us-east-1"
  access_key = "YOUR_AWS_ACCESS_KEY"
  secret_key = "YOUR_AWS_SECRET_KEY"
}

resource "aws_vpc" "vpc10" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.vpc10.id
  cidr_block        = "10.0.1.0/24"
  map_public_ip_on_launch = true
}