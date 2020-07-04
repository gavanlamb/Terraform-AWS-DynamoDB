locals {
  default_tags = {
    Company = var.company
    Environment = var.environment
    Name = var.name
    Service = var.service
    ManagedBy = "Terraform"
  }
  attributes = [
    {
      name = var.range_key_name
      type = var.range_key_type
    },
    {
      name = var.hash_key_name
      type = var.hash_key_type
    },
    var.attributes,
  ]
  from_index = length(var.range_key_name) > 0 ? 0 : 1
  attributes_final = slice(local.attributes, local.from_index, length(local.attributes))
}

resource "aws_dynamodb_table" "table" {
  name = var.table_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key = var.hash_key_name
  range_key = var.range_key_name
  local_secondary_index = [var.local_secondary_indexes]
  global_secondary_index = [var.global_secondary_indexes]
  attribute = [local.attributes_final]
  
  ttl {
    attribute_name = var.ttl_attribute_name
    enabled = var.ttl_active
  }

  point_in_time_recovery {
    enabled = var.point_in_time_recovery_enable
  }

  tags = merge(local.default_tags, var.tags)
}
