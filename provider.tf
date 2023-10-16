terraform {
  required_providers {
    email = {
      source = "WATonomous/email"
      version = "0.2.3"
    }
    tfe = {
      source = "hashicorp/tfe"
      version = "0.49.2"
    }
  }
}

provider "email" {}

provider "tfe" {
  hostname = var.hostname
  token    = var.token
  version  = "~> 0.49.2"
}
  


