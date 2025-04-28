terraform {
  required_version = "<= 2.0.14"
  required_providers {
    aws = {
      version = "~>5.0"
      source  = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "ssr2025-rc"
    key    = "dev-modules.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.aws_region
}