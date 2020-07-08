provider "azurerm" { 
    version = "1.27" 
} 


# These resources are to be created before running "terraform init" 

terraform { 
    required_version = "0.11.14" 
    backend "azurerm" { 
    resource_group_name       = "dev" 
    storage_account_name      = "dev1kellysalrin" 
    container_name            = "devcontainer" 
    access_key                = "eBrtMDJ+qyeBrc7EW6Cb0FzyI5a7Y80BYDWGLH3SwcBzL6LFvYwCQpBy4ivL+qMoiIrzjZfeDSkWG9RSqiWhig==" 
    key                       = "dev_terraform.tfstate" 
  } 
} 