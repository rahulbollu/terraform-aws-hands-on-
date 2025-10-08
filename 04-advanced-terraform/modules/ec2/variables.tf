variable "region" {
  description = "AWS region"
  type        = string
}

variable "ami_id" {
  description = "AMI ID to use for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID for EC2 instance"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID for EC2 instance"
  type        = string
}

variable "project_name" {
  description = "Project name for tagging"
  type        = string
}
