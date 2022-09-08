variable "resource_group_name" {
    default = "cosrgrg"
  
}
variable "location" {
    default = "uksouth"
  
}
variable "tags" {
  description = "Tags for the resources"
  type = map(string)
  default = {
    "environment" = "dev"
    "source" = "terraform"
  }
}