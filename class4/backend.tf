terraform {
backend "s3" {
bucket = "terraform-state-april-class-kellysalrin"
key = "jenkins/us-east-1/tools/ohio/asg.tfstate"
region = "us-east-1"
  }
}
