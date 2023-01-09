resource "random_string" "service" {
  length  = 8
  special = false
  upper   = false
  lower   = true
}

locals {
  service_name = var.service_name == null ? random_string.service.result : var.service_name
}
locals {
  full_name = var.environment == null ? substr(join("-", ["pbp", var.domain, local.service_name]), 0, 50) : substr(join("-", ["pbp", var.domain, local.service_name, var.environment]), 0, 50)
  default_tags = {
    Name         = var.environment == null ? substr(join("-", ["pbp", var.domain, local.service_name]), 0, 50) : substr(join("-", ["pbp", var.domain, local.service_name, var.environment]), 0, 50)
    domain       = var.domain
    service_name = local.service_name
    environment  = var.environment
  }
}



