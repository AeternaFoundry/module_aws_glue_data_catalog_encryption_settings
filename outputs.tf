output "glue_data_catalog_encryption_settings_id" {
  description = "Map of id values across all glue_data_catalog_encryption_settings, keyed the same as var.glue_data_catalog_encryption_settings"
  value       = { for k, v in aws_glue_data_catalog_encryption_settings.glue_data_catalog_encryption_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "glue_data_catalog_encryption_settings_catalog_id" {
  description = "Map of catalog_id values across all glue_data_catalog_encryption_settings, keyed the same as var.glue_data_catalog_encryption_settings"
  value       = { for k, v in aws_glue_data_catalog_encryption_settings.glue_data_catalog_encryption_settings : k => v.catalog_id if v.catalog_id != null && length(v.catalog_id) > 0 }
}
output "glue_data_catalog_encryption_settings_data_catalog_encryption_settings" {
  description = "Map of data_catalog_encryption_settings values across all glue_data_catalog_encryption_settings, keyed the same as var.glue_data_catalog_encryption_settings"
  value       = { for k, v in aws_glue_data_catalog_encryption_settings.glue_data_catalog_encryption_settings : k => one(v.data_catalog_encryption_settings) if v.data_catalog_encryption_settings != null && length(v.data_catalog_encryption_settings) > 0 }
}
output "glue_data_catalog_encryption_settings_region" {
  description = "Map of region values across all glue_data_catalog_encryption_settings, keyed the same as var.glue_data_catalog_encryption_settings"
  value       = { for k, v in aws_glue_data_catalog_encryption_settings.glue_data_catalog_encryption_settings : k => v.region if v.region != null && length(v.region) > 0 }
}

