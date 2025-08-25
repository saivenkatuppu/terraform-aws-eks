terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.9.0"    
      }
  }

  backend "s3" {
    bucket = "devops84s-practice"
    key    = "vpc-demo-eks"
    region = "us-east-1"
    encrypt        = true
    use_lockfile = true  #----> locking the state file 
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}