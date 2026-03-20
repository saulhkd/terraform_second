variable "GITHUB_TOKEN" {
  description = "GitHub token with repo permissions"
  type        = string
  sensitive   = true
}
# variable "nombre_repo" {
#   description = "El nombre del repositorio que vamos a crear"
#   type        = string
#   default     = "mi-nuevo-repo-terraform"
# }

# variable "colaborador" {
#   description = "El nombre de usuario de GitHub a añadir como administrador del repositorio"
#   type        = string
# }

# variable "secret_password" {
#   description = "Valor para la secret 'password'"
#   type        = string
#   sensitive   = true # Para que no se muestre en consola
# }

# variable "var_usuario" {
#   description = "Valor para la variable 'usuario'"
#   type        = string
# }