variable "serviceendpoint_bitbucket_lookup" {
  description = <<EOT
Map of serviceendpoint_bitbucket_lookup, attributes below
Required:
    - project_id
Optional:
    - service_endpoint_id
    - service_endpoint_name
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    project_id            = string
    service_endpoint_id   = optional(string)
    service_endpoint_name = optional(string)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
}

