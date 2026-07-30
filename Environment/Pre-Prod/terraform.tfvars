rgs = {
  rg1 = {
    name     = "vm-rg"
    location = "centralindia"
  }

   rg2 = {
    name     = "vm-rg2"
    location = "centralindia"
  }

  rg3 = {
    name     = "vm-rg3"
    location = "centralindia"
  }
 
}

vnets = {
  vnet1 = {
    name                = "vm-vnet"
    location            = "centralindia"
    resource_group_name = "vm-rg"
    address_space       = ["10.100.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    name                 = "vm-frontend-subnet"
    resource_group_name  = "vm-rg"
    virtual_network_name = "vm-vnet"
    address_prefixes     = ["10.100.1.0/24"]

  }
  subnet2 = {
    name                 = "vm-backend-subnet"
    resource_group_name  = "vm-rg"
    virtual_network_name = "vm-vnet"
    address_prefixes     = ["10.100.2.0/24"]

  }
}

pips = {
  pip1 = {
    name                = "vm-frontend-pip"
    resource_group_name = "vm-rg"
    location            = "centralindia"
    allocation_method   = "Static"
  }
  pip2 = {
    name                = "vm-backend-pip"
    resource_group_name = "vm-rg"
    location            = "centralindia"
    allocation_method   = "Static"
  }
}

vms = {
  vm1 = {
    nic_name             = "vm-frontend-nic"
    rg_name              = "vm-rg"
    location             = "centralindia"
    vm_name              = "vm-frontend"
    vm_size              = "Standard_D2s_v3"
    subnet_name          = "vm-frontend-subnet"
    virtual_network_name = "vm-vnet"
    public_ip_name       = "vm-frontend-pip"
    key_vault_name       = "kv-vm-vnu"
    kv_rg_name           = "sakv-rg"
    username_secret_name = "vm-username"
    password_secret_name = "vm-password"



  }
  vm2 = {
    nic_name             = "vm-backend-nic"
    rg_name              = "vm-rg"
    location             = "centralindia"
    vm_name              = "vm-backend"
    vm_size              = "Standard_D2s_v3"
    subnet_name          = "vm-backend-subnet"
    virtual_network_name = "vm-vnet"
    public_ip_name       = "vm-backend-pip"
    key_vault_name       = "kv-vm-vnu"
    kv_rg_name           = "sakv-rg"
    username_secret_name = "vm-username"
    password_secret_name = "vm-password"

  }
}

