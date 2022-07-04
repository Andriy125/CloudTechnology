provider "aws" {
  region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket         = "terraform-state-lock-task-10-bucket"
    key            = "task-10/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-state-lock-dynamo"
  }
}