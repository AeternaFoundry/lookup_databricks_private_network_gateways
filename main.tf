data "databricks_private_network_gateways" "private_network_gateways_lookup" {
  for_each = var.private_network_gateways_lookup

  parent = each.value.parent
}

