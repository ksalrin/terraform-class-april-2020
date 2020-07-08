provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}


data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
      bucket = "terraform-state-april-class-kellysalrin"
      key = "jenkins/us-east-1/tools/virginia/jenkins.tfstate"
      region = "us-east-1"
  }
}


resource "aws_instance" "web" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  subnet_id     =   "${data.terraform_remote_state.network.public_subnet1}"
}


output "Public Subnet1" {
    value = "${data.terraform_remote_state.network.public_subnet1}"
}
output "Public Subnet2" {
    value = "${data.terraform_remote_state.network.public_subnet2}"
}
output "Public Subnet3" {
    value = "${data.terraform_remote_state.network.public_subnet3}"
}