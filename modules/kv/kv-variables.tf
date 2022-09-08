variable "azurerm_key_vault" {
    default = "vinkvkv"
}
variable "location" {
    default = "uksouth"
}
variable "resource_group_name" {
    default = "" 
}
variable "enabled_for_disk_encryption" {
    default = "true"  
}
variable "tenant_id" {
    default = "b67b4e21-5847-4b5b-9166-3091131eeefe"      
}
variable "soft_delete_retention_days" {
    default = "7" 
}
variable "purge_protection_enabled" {
    default = "false"   
}
variable "object_id" {
    default = "11abf858-7df1-48e8-821a-267857f5fcfe"

  
}