variable "domain" {
  type        = string
  default= "-"
  description = "reporting,data,platform,frontend,backend)"
  validation {
    condition = contains(["reporting", "data", "platform", "frontend", "backend","-"], var.domain)

    error_message = "The Domain must be used one of reporting, data, platform, frontend, backend."
  }
}

variable "service_name" {
  description = "give string name"
  default     = null
  validation {
    condition = var.service_name == null || can(regex("^[0-9A-Za-z]+$",coalesce(var.service_name, 0)))

    error_message = "The service_name can only be Alphanumeric and with no spaces."
  }
}

variable "environment" {
  type        = string
  description = "development,production"
  default     = null
  validation {
    condition = var.environment == null || contains(["development", "production","-"], coalesce(var.environment, 0))

    error_message = "The environment values can be only development or production."
  }
}