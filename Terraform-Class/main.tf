provider "aws" {
    region = "ap-south-1"
    access_key = "AKIARJM3C32MF2IPHD6T"
    secret_key = "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"
}

resource "aws_vpc" "some_custom_vpc" {

  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Some Custom VPC"
  }
}

resource "aws_subnet" "some_public_subnet" {

  vpc_id            = aws_vpc.some_custom_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-south-1a"

  tags = {
    Name = "Some Public Subnet"
  }
}


resource "aws_instance" "test" {
    ami = "ami-06b72b3b2a773be2b"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.some_public_subnet.id
    security_group_id    = aws_security_group.sg.id
    key_name = "dev-training"
    tags = {
        Name = "terraform-example"
    }
}


resource "aws_security_group" "sg"{
  name = "demo-sg"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

