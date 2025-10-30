variable "resource_group_name" {
  description = "Name for the Azure Resource Group"
  type        = string
  default     = "DevOpsProjectRG"
}

variable "location" {
  description = "Azure Region for deployment"
  type        = string
  default     = "eastus"
}

variable "acr_name" {
  description = "Name for the Azure Container Registry"
  type        = string
  default     = "devopsacrdemo12345" # Must be globally unique
}

variable "aks_cluster_name" {
  description = "Name for the AKS Cluster"
  type        = string
  default     = "DevOpsProjectAKS"
}