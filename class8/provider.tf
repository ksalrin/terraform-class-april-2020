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
    access_key                = "key_here" 
    key                       = "dev_terraform.tfstate" 
  } 
} 
