variable "cluster_name" {
 description = "EKS cluster name"
 type        = string
 default     = "terraform-demo-eks"
}
variable "cluster_version" {
 description = "Kubernetes version"
 type        = string
 default     = "1.29"
}
variable "vpc_id" {
 description = "VPC ID where EKS will be created"
 type        = string
}
variable "subnets" {
 description = "Subnets for worker nodes"
 type        = list(string)
}