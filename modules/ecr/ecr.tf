
resource "aws_ecr_repository" "this" {
  name = var.repo_name
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

#output "repository_url" {
#  value = aws_ecr_repository.this.repository_url
#}

# Output ECR details for next steps
output "ecr_repository_uri" {
  description = "URI of the ECR repository"
  value       = aws_ecr_repository.this.repository_url
}

output "ecr_repository_url" {
  description = "URL of the ECR repository"
  value       = aws_ecr_repository.this.repository_url
}

output "ecr_repository_name" {
  description = "Name of the ECR repository"
  value       = aws_ecr_repository.this.name
}

output "docker_login_command" {
  description = "Command to login to ECR"
  value       = "aws ecr get-login-password --region ${var.region} | docker login --username AWS --password-stdin ${aws_ecr_repository.this.repository_url}"
}

output "docker_build_commands" {
  description = "Commands to build and push Docker image"
  value = [
    "cd lambda_app",
    "docker build -t ${aws_ecr_repository.this.name} .",
    "docker tag ${aws_ecr_repository.this.name}:latest ${aws_ecr_repository.this.repository_url}:latest",
    "docker push ${aws_ecr_repository.this.repository_url}:latest"
  ]
}