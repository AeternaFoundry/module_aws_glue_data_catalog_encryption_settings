variable "glue_data_catalog_encryption_settings" {
  description = <<EOT
Map of glue_data_catalog_encryption_settings, attributes below
Required:
    - data_catalog_encryption_settings (block):
        - connection_password_encryption (required, block):
            - aws_kms_key_id (optional)
            - return_connection_password_encrypted (required)
        - encryption_at_rest (required, block):
            - catalog_encryption_mode (required)
            - catalog_encryption_service_role (optional)
            - sse_aws_kms_key_id (optional)
Optional:
    - catalog_id
    - region
EOT

  type = map(object({
    catalog_id = optional(string)
    region     = optional(string)
    data_catalog_encryption_settings = object({
      connection_password_encryption = object({
        aws_kms_key_id                       = optional(string)
        return_connection_password_encrypted = bool
      })
      encryption_at_rest = object({
        catalog_encryption_mode         = string
        catalog_encryption_service_role = optional(string)
        sse_aws_kms_key_id              = optional(string)
      })
    })
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

