/*terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}*/

terraform {
  backend "s3" {
    bucket  = "cicd-pipeline-ivan"
    encrypt = true
    key     = "terraform.tfstate"
    region  = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  # Oregon
  region = "us-east-1"
}