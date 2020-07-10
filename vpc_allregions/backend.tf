terraform {
  required_version = "0.11.14"
  required_providers {
    aws = {
      version = "2.69.0"
    }
  }
  
  backend "s3" {
    bucket = "terraform-state-april-class-kellysalrin"
    key = "jenkins/us-east-1/tools/virginia/jenkins.tfstate"
    region = "us-east-1"
    #dynamodb_table = "prod"
  }
}

