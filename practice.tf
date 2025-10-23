provider "aws" {
    region = "us-west-2"
    profile = "default"
  
}

resource "aws_instance" "example" {
    ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
    instance_type = "t2.micro"
    tags = {
      Name = "ExampleInstance"
    }
}

resource aws_vpc "main" {
  cidr_block = "0.0.0.0"
  security_group {
    name        = "main_sg"
    description = "Main security group"
    ingress {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "main_vpc"
    }

resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "0.0.0.0"
    availability_zone = "us-west-2a"
    tags = {
        Name = "main_subnet"
    }
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main_igw"
  }
}
