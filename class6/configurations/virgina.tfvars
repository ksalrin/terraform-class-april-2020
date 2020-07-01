# Mapping

subnets = [
    "subnet-0bcd1194637c04879", 
    "subnet-0256ce2f2e6e5b2b2", 
    "subnet-07bfbfc3b6c24f083"
] 

vpc_id = "vpc-098048b72da469e33" 
instance_type = "m4.large" 
asg_max_size = 5 
region = "us-east-1"

tags = {
    Env             = "Development"
    Billing         = "SMA"
    Application     = "Artemis"
    Region          = "us-east-1" 
    Created_by      = "kelly salrin"
    Team            = "DevOps"
    Managed_by      = "infrastructure"
    Quarter         = 3
}
