variable "varToken" {
  default   = ""
  sensitive = true
}

variable "varOwner" {
  type    = string
  description = "The owner of the repository:"
}

variable "varRepoName" {
  type = string
  description = "The name of the repository:"
}