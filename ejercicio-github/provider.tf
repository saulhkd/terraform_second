terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.7.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.4.3"
    }
  }
}
provider "github" {
  token = var.GITHUB_TOKEN
}
