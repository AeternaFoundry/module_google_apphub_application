variable "apphub_applications" {
  description = <<EOT
Map of apphub_applications, attributes below
Required:
    - application_id
    - location
    - scope (block):
        - type (required)
Optional:
    - deletion_policy
    - description
    - display_name
    - project
    - attributes (block):
        - business_owners (optional, block):
            - display_name (optional)
            - email (required)
        - criticality (optional, block):
            - type (required)
        - developer_owners (optional, block):
            - display_name (optional)
            - email (required)
        - environment (optional, block):
            - type (required)
        - operator_owners (optional, block):
            - display_name (optional)
            - email (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    application_id  = string
    location        = string
    deletion_policy = optional(string)
    description     = optional(string)
    display_name    = optional(string)
    project         = optional(string)
    scope = object({
      type = string
    })
    attributes = optional(object({
      business_owners = optional(list(object({
        display_name = optional(string)
        email        = string
      })))
      criticality = optional(object({
        type = string
      }))
      developer_owners = optional(list(object({
        display_name = optional(string)
        email        = string
      })))
      environment = optional(object({
        type = string
      }))
      operator_owners = optional(list(object({
        display_name = optional(string)
        email        = string
      })))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

