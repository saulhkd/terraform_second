resource "random_pet" "nombre_repositorio" {
    separator = "-"
    length = 2
}
resource "github_repository" "mi-repositorio" {
  name        = "terraform-${random_pet.nombre_repositorio.id}"
  description = "This is a repository created with Terraform"
  visibility  = "public"
  auto_init = true
}

resource "github_branch_default" "default" {
  repository = github_repository.mi-repositorio.name
  branch     = "main"
  depends_on = [github_repository.mi-repositorio]
}
resource "github_branch" "develop" {
  repository = github_repository.mi-repositorio.name
  branch     = "develop"
  
  depends_on = [
    github_repository.mi-repositorio,
    github_branch_default.default
  ]
}
resource "github_repository_collaborator" "profesor" {
  repository = github_repository.mi-repositorio.name
  username   = "a10pepo"
  permission = "admin"
}