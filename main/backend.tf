terraform {
  backend "s3" {
    bucket = "tfstate-ghactions-rb4321"
    key    = "eks/terraform.tfstate"
    region = "us-west-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}