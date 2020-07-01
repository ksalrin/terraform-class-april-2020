# Mapping
region = "eu-north-1"
subnets = [
    "subnet-0bcd1194637c04879", 
    "subnet-0256ce2f2e6e5b2b2", 
    "subnet-07bfbfc3b6c24f083"
] 
vpc_id = "vpc-098048b72da469e33" 


instance_type = "m4.large" 
asg_max_size = 5 

tags = {
    Env             = "Development"
    Billing         = "SMA"
    Application     = "Artemis"
    Region          = "eu-north-1" 
    Created_by      = "kelly salrin"
    Team            = "DevOps"
    Managed_by      = "infrastructure"
    Quarter         = 3
}


# Below code is used to set backend only
environment                     =   "stockholm"
s3_bucket                       =   "terraform-state-april-class-kellysalrin"
s3_folder_project               =   "eks"
s3_folder_region                =   "eu-north-1"
s3_folder_type                  =   "tools"
s3_tfstate_file                 =   "eks.tfstate"