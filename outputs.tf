output "gamelift_scripts_id" {
  description = "Map of id values across all gamelift_scripts, keyed the same as var.gamelift_scripts"
  value       = { for k, v in aws_gamelift_script.gamelift_scripts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "gamelift_scripts_arn" {
  description = "Map of arn values across all gamelift_scripts, keyed the same as var.gamelift_scripts"
  value       = { for k, v in aws_gamelift_script.gamelift_scripts : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "gamelift_scripts_name" {
  description = "Map of name values across all gamelift_scripts, keyed the same as var.gamelift_scripts"
  value       = { for k, v in aws_gamelift_script.gamelift_scripts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "gamelift_scripts_region" {
  description = "Map of region values across all gamelift_scripts, keyed the same as var.gamelift_scripts"
  value       = { for k, v in aws_gamelift_script.gamelift_scripts : k => v.region if v.region != null && length(v.region) > 0 }
}
output "gamelift_scripts_storage_location" {
  description = "Map of storage_location values across all gamelift_scripts, keyed the same as var.gamelift_scripts"
  value       = { for k, v in aws_gamelift_script.gamelift_scripts : k => one(v.storage_location) if v.storage_location != null && length(v.storage_location) > 0 }
}
output "gamelift_scripts_tags" {
  description = "Map of tags values across all gamelift_scripts, keyed the same as var.gamelift_scripts"
  value       = { for k, v in aws_gamelift_script.gamelift_scripts : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "gamelift_scripts_tags_all" {
  description = "Map of tags_all values across all gamelift_scripts, keyed the same as var.gamelift_scripts"
  value       = { for k, v in aws_gamelift_script.gamelift_scripts : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "gamelift_scripts_version" {
  description = "Map of version values across all gamelift_scripts, keyed the same as var.gamelift_scripts"
  value       = { for k, v in aws_gamelift_script.gamelift_scripts : k => v.version if v.version != null && length(v.version) > 0 }
}
output "gamelift_scripts_zip_file" {
  description = "Map of zip_file values across all gamelift_scripts, keyed the same as var.gamelift_scripts"
  value       = { for k, v in aws_gamelift_script.gamelift_scripts : k => v.zip_file if v.zip_file != null && length(v.zip_file) > 0 }
}

