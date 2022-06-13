variable "kv_name" {
    description = "name of Key_Vault"
    type = string
    default = ""
}
variable "rg_name" {
    description = "name of the resource_group"
    type = string
    default = ""
  
}
variable "location" {
    description = "location of the resource"
    type = string
    default = ""
  
}
variable "kv_secret_name" {
    description = "name of keyvault secret"
    type=string
    default = ""
  
}
variable "kv_secret_value" {
    description = "value"
    type = string
    default = "szechuan"
  
}