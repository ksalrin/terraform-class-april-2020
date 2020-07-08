private_subnet1_range    = "10.0.1.0/24" 
private_subnet2_range    = "10.0.2.0/24" 
private_subnet3_range    = "10.0.3.0/24" 
resource_group_name      = "dev"           #Precreate this while creating Backend Container 
security_group_name      = "sec_group1" 
vm1_computername         = "vm1" 
vm2_computername         = "vm2" 
vm3_computername         = "vm3" 
address_space            = "10.0.0.0/16" 
vnet_name                = "vnet1" 
location                 = "eastus" 
ssh_key                  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7PnE8V9sCqH94NimBOlC5MPf0RdQtPfxjfunDpOq3716VNal63ThSUe4waChWU8J4KmLjGwWk6pGhiIMq/Vdp/0cJ7izoqRJN7VilthFykHzX1x/YQQyC9lrglgySNSA54z1nbCgvfzxa6LN3u2P/Svx9ycVBQJ/ZrR4k5hhd6r5xMyw52Qkszo0g5knKY2jtiDTes3KtlqEWdMdpGWqLkJoTKIbov99I4R3L2+8mUOT2EZ4hjy9T/jD/F7SdYmwyFM9rEuHnxYXlftUwBpf/kusA90wzaED0pTHkAV1LOBVXWjREXHTKOEPBmA0V4U9o5InJ06CHMgR9nqbY3Vyx kelly@cc-e9132bcb-54d8878d7d-jqtp4" 
environment              = "dev" 
storage_account          = "dev1kellysalrin" 

 

#OS Information 

publisher                = "OpenLogic" 
offer                    = "CentOS" 
sku                      = "7.5" 
version                  = "latest" 
admin_username           = "centos" 
vm_size                  = "Standard_DS1_v2" 