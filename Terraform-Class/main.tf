provider "aws" {
    region = "ap-south-1"
    access_key = "2222"
    secret_key = "dsssss+nr3Ob0/kJy0G/ssssss/A"
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
    tags = {
        Name = "Some Public Subnet"
    }
}



resource "aws_instance" "test" {
    ami           = "ami-06b72b3b2a773be2b"
    instance_type = "t2.micro"
    subnet_id     = aws_subnet.some_public_subnet.id
    key_name      = "dev-training"
    tags = {
        Name = "terraform-example"
    }
}

resource "aws_security_group" "sg" {
    name        = "demo-sg"
    vpc_id      = aws_vpc.some_custom_vpc.id  # Add this line to specify the VPC ID
    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
}


# resource "aws_security_group" "sg" {
#     name = "demo-sg"
#     ingress {
#         from_port   = 22
#         to_port     = 22
#         protocol    = "tcp"
#         cidr_blocks = ["0.0.0.0/0"]
#     }
# }


