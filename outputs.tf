output "kubernetes_fleet_update_strategies" {
  description = "All kubernetes_fleet_update_strategy resources"
  value       = azurerm_kubernetes_fleet_update_strategy.kubernetes_fleet_update_strategies
}
output "kubernetes_fleet_update_strategies_kubernetes_fleet_manager_id" {
  description = "List of kubernetes_fleet_manager_id values across all kubernetes_fleet_update_strategies"
  value       = [for k, v in azurerm_kubernetes_fleet_update_strategy.kubernetes_fleet_update_strategies : v.kubernetes_fleet_manager_id]
}
output "kubernetes_fleet_update_strategies_name" {
  description = "List of name values across all kubernetes_fleet_update_strategies"
  value       = [for k, v in azurerm_kubernetes_fleet_update_strategy.kubernetes_fleet_update_strategies : v.name]
}
output "kubernetes_fleet_update_strategies_stage" {
  description = "List of stage values across all kubernetes_fleet_update_strategies"
  value       = [for k, v in azurerm_kubernetes_fleet_update_strategy.kubernetes_fleet_update_strategies : v.stage]
}

