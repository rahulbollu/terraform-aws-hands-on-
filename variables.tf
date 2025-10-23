variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-west-2"
  
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
  default     = "t2.micro"
}

variable vpc_id {
  description = "value"
    type        = string
    default     = "vpc-0b5d5b7d"
}