variable "company" {
  type = string
  description = "Company name"
}
variable "environment" {
  type = string
  description = "Environment name"
}
variable "name" {
  type = string
  description = "Name"
}
variable "service" {
  type = string
  description = "Service name"
}
variable "table_name" {
  type = string
  description = "Name of the table"
}
variable "hash_key_name" {
  type = string
}
variable "hash_key_type" {
  type = string
  default = "S"
}
variable "range_key_name" {
  type = string
}
variable "range_key_type" {
  type = string
  default = "S"
}
variable "attributes" {
  type = "list"
  default = []
  description = "Enable recovery"
}
variable "local_secondary_indexes" {
  type = "list"
  default = []
}
variable "global_secondary_indexes" {
  type = "list"
  default = []
}
variable "ttl_attribute_name" {
  default = "ExpirationTime"
}
variable "ttl_active" {
  type = bool
  default = true
}
variable "point_in_time_recovery_enable" {
  type = bool
  default = false
  description = "Enable recovery"
}
variable "tags" {
  description = "Tags for the certificate resources"
  type        = "map"
  default     = {}
}
