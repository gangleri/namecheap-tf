terraform {
  required_providers {
    namecheap = {
      source  = "namecheap/namecheap"
      version = ">= 2.0.0"
    }
  }
}

variable "namecheap_key" {
    type = string
    description = "Namecheap API key"
}

variable "namecheap_user" {
    type = string
    description = "Namecheap user name"
}

provider "namecheap" {
  user_name = var.namecheap_user
  api_user = var.namecheap_user
  api_key = var.namecheap_key
  use_sandbox = false
}
