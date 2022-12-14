terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}


provider "aws" {
    #access_key = "${var.access_key}"
    #secret_key = "${var.secret_key}"
  #  region = "ap-south-1"
}


resource "aws_instance" "Demo" {
  ami           = "ami-0d758c1134823146a"
  instance_type = "t2.micro"
  key_name = "key_pair_name"
  tags = {
    Name = "Demo"
  }
}
