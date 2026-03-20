variable file-content {
  type        = map
  default     = {
    "statement1" = "We love terraform!"
    "statement2" = "Terraform is a great tool for infrastructure as code!"
  }
}
variable prefix {
    type        = string
    default     = "Mr"

  }
variable saludo {
    type        = map
    default     = {
        "Mr" = "Hello"
        "Mrs" = "Hi"
    }
  }
  variable separator {
  default     = "."
  type = string
}
variable length {
  default     = 2
  type = number
}