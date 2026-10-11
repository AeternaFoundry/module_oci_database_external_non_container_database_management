resource "oci_database_external_non_container_database_management" "database_external_non_container_database_managements" {
  for_each = var.database_external_non_container_database_managements

  enable_management                  = each.value.enable_management
  external_database_connector_id     = each.value.external_database_connector_id
  external_non_container_database_id = each.value.external_non_container_database_id
  license_model                      = each.value.license_model

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

