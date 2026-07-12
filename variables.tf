variable "kubernetes_fleet_update_strategies" {
  description = <<EOT
Map of kubernetes_fleet_update_strategies, attributes below
Required:
    - kubernetes_fleet_manager_id
    - name
    - stage (block):
        - after_stage_wait_in_seconds (optional)
        - group (required, block):
            - name (required)
        - name (required)
EOT

  type = map(object({
    kubernetes_fleet_manager_id = string
    name                        = string
    stage = list(object({
      after_stage_wait_in_seconds = optional(number)
      group = list(object({
        name = string
      }))
      name = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.kubernetes_fleet_update_strategies : (
        alltrue([for item in v.stage : (length(item.group) >= 1)])
      )
    ])
    error_message = "Each group list must contain at least 1 items"
  }
}

