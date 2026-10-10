variable "gamelift_scripts" {
  description = <<EOT
Map of gamelift_scripts, attributes below
Required:
    - name
Optional:
    - region
    - tags
    - tags_all
    - version
    - zip_file
    - storage_location (block):
        - bucket (required)
        - key (required)
        - object_version (optional)
        - role_arn (required)
EOT

  type = map(object({
    name     = string
    region   = optional(string)
    tags     = optional(map(string))
    tags_all = optional(map(string))
    version  = optional(string)
    zip_file = optional(string)
    storage_location = optional(object({
      bucket         = string
      key            = string
      object_version = optional(string)
      role_arn       = string
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

