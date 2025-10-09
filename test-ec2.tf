provider "aws" {
  region = "us-west-2"  
}

resource "aws_instance" "test" {
  ami           = "ami-052064a798f08f0d3" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = "t2.micro"

  tags = {
    Name = "manual-test-ec2"
  }
  
}