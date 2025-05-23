provider "aws" {
    alias = "region-1"
  region = "us-east-1"
}
provider "aws" {
    alias = "region-2"
  region = "us-east-2"
}
variable "var1" {
  description = "Ami value for us-east-1"
  type = string
  default = "ami-0953476d60561c955"
}

variable "ami-2" {
  description = "ami value for us-east-2"
  type = string
  default = "ami-06c8f2ec674c67112"
}
resource "aws_instance" "name" {
  ami = var.var1
  provider = aws.region-1
  instance_type = "t2.micro"
  tags = {
    Name = "Instance-1"
  }
}

resource "aws_instance" "name1" {
  ami = var.ami-2
  provider = aws.region-2
  instance_type = "t2.micro"
   tags = {
    Name = "Instance-2"
  }
}