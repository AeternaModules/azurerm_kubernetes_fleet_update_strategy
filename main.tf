resource "azurerm_kubernetes_fleet_update_strategy" "kubernetes_fleet_update_strategies" {
  for_each = var.kubernetes_fleet_update_strategies

  kubernetes_fleet_manager_id = each.value.kubernetes_fleet_manager_id
  name                        = each.value.name

  stage {
    after_stage_wait_in_seconds = each.value.stage.after_stage_wait_in_seconds
    dynamic "group" {
      for_each = each.value.stage.group
      content {
        name = group.value.name
      }
    }
    name = each.value.stage.name
  }
}

