provider "aws" {
  region = "us-west-2"  
}

resource "aws_instance" "test" {
  ami           = "ami-0360c520857e3138f" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = "t2.micro"

  tags = {
    Name = "manual-test-ec2"
  }
  
}