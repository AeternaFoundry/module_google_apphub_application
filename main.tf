resource "google_apphub_application" "apphub_applications" {
  for_each = var.apphub_applications

  application_id  = each.value.application_id
  location        = each.value.location
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  display_name    = each.value.display_name
  project         = each.value.project

  scope {
    type = each.value.scope.type
  }

  dynamic "attributes" {
    for_each = each.value.attributes != null ? [each.value.attributes] : []
    content {
      dynamic "business_owners" {
        for_each = attributes.value.business_owners != null ? attributes.value.business_owners : []
        content {
          display_name = business_owners.value.display_name
          email        = business_owners.value.email
        }
      }
      dynamic "criticality" {
        for_each = attributes.value.criticality != null ? [attributes.value.criticality] : []
        content {
          type = criticality.value.type
        }
      }
      dynamic "developer_owners" {
        for_each = attributes.value.developer_owners != null ? attributes.value.developer_owners : []
        content {
          display_name = developer_owners.value.display_name
          email        = developer_owners.value.email
        }
      }
      dynamic "environment" {
        for_each = attributes.value.environment != null ? [attributes.value.environment] : []
        content {
          type = environment.value.type
        }
      }
      dynamic "operator_owners" {
        for_each = attributes.value.operator_owners != null ? attributes.value.operator_owners : []
        content {
          display_name = operator_owners.value.display_name
          email        = operator_owners.value.email
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

