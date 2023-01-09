output "name" {
  description = "The ID of the name"
  value       = lower(local.full_name)
}

# output "tags" {
#   description = "The ID of the tags"
#   value       = local.default_tags
# }