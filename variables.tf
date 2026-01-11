variable "kubernetes_fleet_update_strategys" {
  description = <<EOT
Map of kubernetes_fleet_update_strategys, attributes below
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
    stage = object({
      after_stage_wait_in_seconds = optional(number)
      group = object({
        name = string
      })
      name = string
    })
  }))
}

