variable "database_external_non_container_database_managements" {
  description = <<EOT
Map of database_external_non_container_database_managements, attributes below
Required:
    - enable_management
    - external_database_connector_id
    - external_non_container_database_id
Optional:
    - license_model
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    enable_management                  = bool
    external_database_connector_id     = string
    external_non_container_database_id = string
    license_model                      = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

