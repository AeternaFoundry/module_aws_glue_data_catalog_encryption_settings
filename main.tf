resource "aws_glue_data_catalog_encryption_settings" "glue_data_catalog_encryption_settings" {
  for_each = var.glue_data_catalog_encryption_settings

  catalog_id = each.value.catalog_id
  region     = each.value.region

  data_catalog_encryption_settings {
    connection_password_encryption {
      aws_kms_key_id                       = each.value.data_catalog_encryption_settings.connection_password_encryption.aws_kms_key_id
      return_connection_password_encrypted = each.value.data_catalog_encryption_settings.connection_password_encryption.return_connection_password_encrypted
    }
    encryption_at_rest {
      catalog_encryption_mode         = each.value.data_catalog_encryption_settings.encryption_at_rest.catalog_encryption_mode
      catalog_encryption_service_role = each.value.data_catalog_encryption_settings.encryption_at_rest.catalog_encryption_service_role
      sse_aws_kms_key_id              = each.value.data_catalog_encryption_settings.encryption_at_rest.sse_aws_kms_key_id
    }
  }
}

