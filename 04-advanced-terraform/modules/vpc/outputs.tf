###########################################
# VPC Module Outputs
###########################################

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public[*].id
}

output "sg_id" {
  description = "Security group ID allowing SSH and HTTP"
  value       = aws_security_group.allow_ssh_http.id
}
