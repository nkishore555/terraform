terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.60.0"
    }
  }
  required_version = "> 1.0.0"
  backend "s3" {
    bucket         = "myterraform321"
    key            = "terraform/mylockfile"
    dynamodb_table = "mytable"
    region         = "ap-south-1"

  }
}

provider "aws" {
  # Configuration options
}
