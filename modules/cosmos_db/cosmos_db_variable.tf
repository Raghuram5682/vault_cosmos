variable "cosmos_name" {
    description = "name of the cosmos_db"
    type = string
    default = ""
  
}
variable "rg_name" {
    description = "name of the resource group"
    type = string
    default = ""
  
}
variable "location" {
    description="resource location"
    type=string
    default = ""  
}
variable "geo_location" {
    description = "resource in geo_locations"
    type = string
    default = "westus"  
}
variable "offer_type" {
    default = "Standard"
  
}