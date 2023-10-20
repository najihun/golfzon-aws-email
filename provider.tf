terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.20.0"
    }

    email = {
      source = "WATonomous/email"
      version = "0.2.3"
    }
  }
}

provider "email" {}

provider "aws" {
  region = "ap-northeast-2"
}


