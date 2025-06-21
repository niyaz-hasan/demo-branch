variable "repo_name" {
  description = "Name to be used on ECR Repo created"
  type        = string
}


variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}