module "resource_groups" {
    source = "./modules/resource-groups"
    
    name = "rg-northwind_backup-dev"
    location = "eastus"

    tags = {
        Environment = "Development"
        Project = "Backup-DR"
        ManagedBy = "Terraform"
    }
}