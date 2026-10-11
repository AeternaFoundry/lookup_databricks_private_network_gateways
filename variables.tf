variable "private_network_gateways_lookup" {
  description = <<EOT
Map of private_network_gateways_lookup, attributes below
Required:
    - parent
EOT

  type = map(object({
    parent = string
  }))
}

