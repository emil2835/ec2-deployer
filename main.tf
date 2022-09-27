
resource "aws_instance" "ec2-innova" {
  ami           = "ami-05fa00d4c63e32376"
  instance_type = "t3.micro"
  security_groups = [aws_security_group.ec2-sec-group.name]

  tags = {
    Name = "ec2-innova"
  }
}

resource "aws_default_vpc" "vpc-innova" {
  tags = {
    Name = "vpc-innova"
  }
}

resource "aws_eip" "eip-innova" {
  instance = aws_instance.ec2-innova.id
  vpc      = true
}