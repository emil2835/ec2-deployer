provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "ec2-innova" {
  ami           = "ami-05fa00d4c63e32376"
  instance_type = "t3.micro"

  tags = {
    Name = "ec2-innova"
  }
}