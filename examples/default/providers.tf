provider "cloudflare" {
  api_key                    = var.api_key
  api_token                  = var.api_token
  api_user_service_key       = var.api_user_service_key
  base_url                   = var.base_url
  email                      = var.email
  user_agent_operator_suffix = var.user_agent_operator_suffix
}
