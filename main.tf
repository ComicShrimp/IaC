provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "terraform-tfstates-learning"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
