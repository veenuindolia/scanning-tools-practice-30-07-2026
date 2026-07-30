# module "resource_group" {
#   source = "../../Modules/azurerm_resource_group"
#   rgs    = var.rgs
# }

# module "vnet" {
#   depends_on = [module.resource_group]
#   source     = "../../Modules/azurerm_virtual_network"
#   vnets      = var.vnets
# }

# module "subnet" {
#   depends_on = [module.vnet]
#   source     = "../../Modules/azurerm_subnet"
#   subnets    = var.subnets
# }

# module "public_ip" {
#   depends_on = [module.resource_group]
#   source     = "../../Modules/azurerm_public_ip"
#   pips       = var.pips
# }

# module "virtual_machine" {
#   depends_on = [module.public_ip, module.subnet]
#   source     = "../../Modules/azurerm_virtual_machine"
#   vms        = var.vms

# }

