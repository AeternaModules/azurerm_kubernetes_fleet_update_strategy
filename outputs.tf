output "kubernetes_fleet_update_strategies_id" {
  description = "Map of id values across all kubernetes_fleet_update_strategies, keyed the same as var.kubernetes_fleet_update_strategies"
  value       = { for k, v in azurerm_kubernetes_fleet_update_strategy.kubernetes_fleet_update_strategies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kubernetes_fleet_update_strategies_kubernetes_fleet_manager_id" {
  description = "Map of kubernetes_fleet_manager_id values across all kubernetes_fleet_update_strategies, keyed the same as var.kubernetes_fleet_update_strategies"
  value       = { for k, v in azurerm_kubernetes_fleet_update_strategy.kubernetes_fleet_update_strategies : k => v.kubernetes_fleet_manager_id if v.kubernetes_fleet_manager_id != null && length(v.kubernetes_fleet_manager_id) > 0 }
}
output "kubernetes_fleet_update_strategies_name" {
  description = "Map of name values across all kubernetes_fleet_update_strategies, keyed the same as var.kubernetes_fleet_update_strategies"
  value       = { for k, v in azurerm_kubernetes_fleet_update_strategy.kubernetes_fleet_update_strategies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "kubernetes_fleet_update_strategies_stage" {
  description = "Map of stage values across all kubernetes_fleet_update_strategies, keyed the same as var.kubernetes_fleet_update_strategies"
  value       = { for k, v in azurerm_kubernetes_fleet_update_strategy.kubernetes_fleet_update_strategies : k => v.stage if v.stage != null && length(v.stage) > 0 }
}

