provider "aws" {
  region = "us-west-2"  
}

resource "aws_instance" "test" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = "t2.micro"

  tags = {
    Name = "manual-test-ec2"
  }
  
}