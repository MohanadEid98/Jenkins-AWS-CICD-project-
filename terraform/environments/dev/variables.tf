variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
}

variable "repository_name" {
  description = "Name of the ECR repository"
  type        = string
}
variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}