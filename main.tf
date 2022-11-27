provider "aws" {
  access_key = "ACCESS_KEY"
  secret_key = "SECRET_KEY"
  region     = "ap-south-1"
}

resource "aws_instance" "Demo" {
  ami           = "ami-0d758c1134823146a"
  instance_type = "t2.micro"
  key_name = "key_pair_name"
  tags = {
    Name = "Demo"
  }
}
