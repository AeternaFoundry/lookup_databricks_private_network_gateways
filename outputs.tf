output "private_network_gateways_lookup_parent" {
  description = "Map of parent values across all private_network_gateways_lookup, keyed the same as var.private_network_gateways_lookup except keys with no parent are omitted"
  value       = { for k, v in data.databricks_private_network_gateways.private_network_gateways_lookup : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "private_network_gateways_lookup_private_network_gateways" {
  description = "Map of private_network_gateways values across all private_network_gateways_lookup, keyed the same as var.private_network_gateways_lookup except keys with no private_network_gateways are omitted"
  value       = { for k, v in data.databricks_private_network_gateways.private_network_gateways_lookup : k => v.private_network_gateways if v.private_network_gateways != null && length(v.private_network_gateways) > 0 }
}

