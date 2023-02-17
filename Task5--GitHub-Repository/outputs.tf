output "op-token" {
  value = var.varToken
  sensitive = true
}

output "op-owner" {
  value = var.varOwner
}

output "op-repoName" {
  value = github_repository.createRepo.id
}