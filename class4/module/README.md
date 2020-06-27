ASG and ELB module


Terraform version - 0.11.14 Create VPC with: 

---Module---
Create the apps.tf file and enter in your region, image_owner (AMI you would like to use), desired capcity, min_size and max_size. Then terrafom init and terraform apply to run.  Example below:

  region = "us-east-1"
  image_owner = "137112412989"  #Canonical
  desired_capacity = "1"
  min_size = "1"
  max_size = "1"

This will create a launch configuration, asg and elb that will be attached to the asg.  There is also a seurcity attached with ssh port open.  
