module "resource_groups" { #when this is applied, it first calls the resource group module
    source = "./modules/resource-groups"
    
    name = "rg-northwind_backup-dev"  #it then supplies the name of the resource group being created
    location = "eastus" #it supplies the location of the resource groups being created

    tags = { #and it supplies the tags being created
        Environment = "Development"
        Project = "Backup-DR"
        ManagedBy = "Terraform"
    }
}

module "storage_account" {
    source = "./modules/storage-account"

    name = "northwindbackupdev01"
    resource_group_name = module.resource_groups.resource_group_name
    location = module.resource_groups.resource_group_location

    tags = {
        Environment = "Development"
        Project = "Backup-DR"
        ManagedBy = "Terraform"
    }

}