terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.48.0"
    } 
  }
  backend "s3" {
    bucket = "chandu-reddy-s3-buckets"
    key = "docker-practice-instance"
    region = "us-east-1"
    dynamodb_table = "chandureddy-dev"
  }
}
  provider "aws"{
    region = "us-east-1"
  }