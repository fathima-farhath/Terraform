provider "aws" {
  region = "us-east-1"
}



resource "aws_instance" "name" {
  ami = var.ec2-ami
  instance_type = var.ec2-type
  tags = {
    Name = "EC2-1"
  }
}