resource "github_repository" "createRepo" {
  name        = var.varRepoName
  description = "Repository created using Terraform code."
}