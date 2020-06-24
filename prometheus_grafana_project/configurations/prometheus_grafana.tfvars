region                  =       "us-east-1"
cidr_block              =       "10.0.0.0/16"
public_cidr_block1      =       "10.0.1.0/24"
public_cidr_block2      =       "10.0.2.0/24"
public_cidr_block3      =       "10.0.3.0/24"
private_cidr_block1     =       "10.0.11.0/24"
private_cidr_block2    =        "10.0.22.0/24"
private_cidr_block3     =       "10.0.33.0/24"

# Below code is used to set backend only
environment                     =   "prometheus_grafana"
s3_bucket                       =   "terraform-state-april-class-kellysalrin"
s3_folder_project               =   "prometheus_grafana"
s3_folder_region                =   "us-east-1"
s3_folder_type                  =   "tools"
s3_tfstate_file                 =   "prometheus_grafana.tfstate"