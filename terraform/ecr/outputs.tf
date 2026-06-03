output "repository_arn" {
  value       = aws_ecr_repository.my_ecr.arn
  description = "The ARN of the ECR repository."
}

output "repository_url" {
  value       = aws_ecr_repository.my_ecr.repository_url
  description = "The URL of the ECR repository (Registry URL + Repo Name)."
}