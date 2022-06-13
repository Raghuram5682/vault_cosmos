variable "aks_name" {
    description = "name of the aks(azure kubernetes service)"
    type=string
    default = ""
  
}
variable "rg_name" {
    description = "name of the resource group"
    type = string
    default = ""
  
}
variable "location" {
    description="resource location"
    default=""
    type = string
  
}
variable "client_id" {
    description = "value of client id"
    default = "81eaf030-54d1-4f6a-9753-d44fe8e52eb3 "
  
}
variable "client_secret" {
    description = "value of client secret"
    default = "Mk/VbAEkBdCwqZSAT1sgr4LkZg2AVLLvJMAFAg4mD50="
  
}