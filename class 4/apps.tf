module "app1" {
  source = "./module"
  region = "us-east-1"
  image_owner = "137112412989"  #Canonical
  desired_capacity = "1"
  min_size = "1"
  max_size = "1"
}
