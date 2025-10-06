variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for Amazon Linux 2 in us-east-1"
  type        = string
  default     = "ami-0360c520857e3138f"
}
