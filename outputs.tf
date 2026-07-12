output "kubernetes_fleet_update_strategies_kubernetes_fleet_manager_id" {
  description = "Map of kubernetes_fleet_manager_id values across all kubernetes_fleet_update_strategies, keyed the same as var.kubernetes_fleet_update_strategies"
  value       = { for k, v in azurerm_kubernetes_fleet_update_strategy.kubernetes_fleet_update_strategies : k => v.kubernetes_fleet_manager_id }
}
output "kubernetes_fleet_update_strategies_name" {
  description = "Map of name values across all kubernetes_fleet_update_strategies, keyed the same as var.kubernetes_fleet_update_strategies"
  value       = { for k, v in azurerm_kubernetes_fleet_update_strategy.kubernetes_fleet_update_strategies : k => v.name }
}
output "kubernetes_fleet_update_strategies_stage" {
  description = "Map of stage values across all kubernetes_fleet_update_strategies, keyed the same as var.kubernetes_fleet_update_strategies"
  value       = { for k, v in azurerm_kubernetes_fleet_update_strategy.kubernetes_fleet_update_strategies : k => v.stage }
}

