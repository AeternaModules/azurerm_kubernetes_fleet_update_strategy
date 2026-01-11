resource "azurerm_kubernetes_fleet_update_strategy" "kubernetes_fleet_update_strategys" {
  for_each = var.kubernetes_fleet_update_strategys

  kubernetes_fleet_manager_id = each.value.kubernetes_fleet_manager_id
  name                        = each.value.name

  stage {
    after_stage_wait_in_seconds = each.value.stage.after_stage_wait_in_seconds
    group {
      name = each.value.stage.group.name
    }
    name = each.value.stage.name
  }
}

