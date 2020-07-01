variable "vpc_id" {}
variable "subnets" {
    type = list
}
variable "instance_type" {}
variable "region" {}
variable "asg_max_size" {} 
variable "tags" {
    type = map
}