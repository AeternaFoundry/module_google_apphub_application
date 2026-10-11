output "apphub_applications_id" {
  description = "Map of id values across all apphub_applications, keyed the same as var.apphub_applications except keys with no id are omitted"
  value       = { for k, v in google_apphub_application.apphub_applications : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apphub_applications_application_id" {
  description = "Map of application_id values across all apphub_applications, keyed the same as var.apphub_applications except keys with no application_id are omitted"
  value       = { for k, v in google_apphub_application.apphub_applications : k => v.application_id if v.application_id != null && length(v.application_id) > 0 }
}
output "apphub_applications_attributes" {
  description = "Map of attributes values across all apphub_applications, keyed the same as var.apphub_applications except keys with no attributes are omitted"
  value       = { for k, v in google_apphub_application.apphub_applications : k => one(v.attributes) if v.attributes != null && length(v.attributes) > 0 }
}
output "apphub_applications_create_time" {
  description = "Map of create_time values across all apphub_applications, keyed the same as var.apphub_applications except keys with no create_time are omitted"
  value       = { for k, v in google_apphub_application.apphub_applications : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "apphub_applications_deletion_policy" {
  description = "Map of deletion_policy values across all apphub_applications, keyed the same as var.apphub_applications except keys with no deletion_policy are omitted"
  value       = { for k, v in google_apphub_application.apphub_applications : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "apphub_applications_description" {
  description = "Map of description values across all apphub_applications, keyed the same as var.apphub_applications except keys with no description are omitted"
  value       = { for k, v in google_apphub_application.apphub_applications : k => v.description if v.description != null && length(v.description) > 0 }
}
output "apphub_applications_display_name" {
  description = "Map of display_name values across all apphub_applications, keyed the same as var.apphub_applications except keys with no display_name are omitted"
  value       = { for k, v in google_apphub_application.apphub_applications : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "apphub_applications_location" {
  description = "Map of location values across all apphub_applications, keyed the same as var.apphub_applications except keys with no location are omitted"
  value       = { for k, v in google_apphub_application.apphub_applications : k => v.location if v.location != null && length(v.location) > 0 }
}
output "apphub_applications_name" {
  description = "Map of name values across all apphub_applications, keyed the same as var.apphub_applications except keys with no name are omitted"
  value       = { for k, v in google_apphub_application.apphub_applications : k => v.name if v.name != null && length(v.name) > 0 }
}
output "apphub_applications_project" {
  description = "Map of project values across all apphub_applications, keyed the same as var.apphub_applications except keys with no project are omitted"
  value       = { for k, v in google_apphub_application.apphub_applications : k => v.project if v.project != null && length(v.project) > 0 }
}
output "apphub_applications_scope" {
  description = "Map of scope values across all apphub_applications, keyed the same as var.apphub_applications except keys with no scope are omitted"
  value       = { for k, v in google_apphub_application.apphub_applications : k => one(v.scope) if v.scope != null && length(v.scope) > 0 }
}
output "apphub_applications_state" {
  description = "Map of state values across all apphub_applications, keyed the same as var.apphub_applications except keys with no state are omitted"
  value       = { for k, v in google_apphub_application.apphub_applications : k => v.state if v.state != null && length(v.state) > 0 }
}
output "apphub_applications_uid" {
  description = "Map of uid values across all apphub_applications, keyed the same as var.apphub_applications except keys with no uid are omitted"
  value       = { for k, v in google_apphub_application.apphub_applications : k => v.uid if v.uid != null && length(v.uid) > 0 }
}
output "apphub_applications_update_time" {
  description = "Map of update_time values across all apphub_applications, keyed the same as var.apphub_applications except keys with no update_time are omitted"
  value       = { for k, v in google_apphub_application.apphub_applications : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

