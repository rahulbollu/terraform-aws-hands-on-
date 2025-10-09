###########################################
# VPC Module Outputs
###########################################

# VPC ID
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

# Public Subnet IDs
output "public_subnet_ids" {
  description = "List of public subnet IDs"
  value       = aws_subnet.public[*].id
}

# Internet Gateway ID (optional but useful)
output "igw_id" {
  description = "Internet Gateway ID"
  value       = aws_internet_gateway.igw.id
}

# Security Group ID
output "sg_id" {
  description = "Security group ID allowing SSH and HTTP"
  value       = aws_security_group.allow_ssh_http.id
}

