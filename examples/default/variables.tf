variable "api_key" {
  type        = string
  default     = null
  description = "The API key for operations"
}

variable "api_token" {
  type        = string
  default     = null
  description = "The API Token for operations"
}

variable "api_user_service_key" {
  type        = string
  default     = null
  description = "A special Cloudflare API key good for a restricted set of endpoints"
}

variable "base_url" {
  type        = string
  default     = null
  description = "Value to override the default HTTP client base URL"
}

variable "email" {
  type        = string
  default     = null
  description = "A registered Cloudflare email address"
}

variable "user_agent_operator_suffix" {
  type        = string
  default     = null
  description = "A value to append to the HTTP User Agent for all API calls"
}
