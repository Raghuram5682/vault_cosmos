resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = var.aks_name

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }
  
  role_based_access_control_enabled = true

  tags = {
    environment = "Demo"
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "aks_cluster" {
  name                  = "internal"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks_cluster.id
  vm_size               = "Standard_DS2_v2"
  node_count            = 1

  tags = {
    Environment = "Production"
  }
}