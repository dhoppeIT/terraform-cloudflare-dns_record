variable "name" {
  type        = string
  description = "DNS record name (or @ for the zone apex) in Punycode"
}

variable "ttl" {
  type        = number
  description = "Time To Live (TTL) of the DNS record in seconds"
}

variable "type" {
  type        = string
  description = "Record type"
}

variable "zone_id" {
  type        = string
  description = "Identifier"
}

variable "comment" {
  type        = string
  default     = null
  description = "Comments or notes about the DNS record"
}

variable "content" {
  type        = string
  default     = null
  description = "A valid IPv4 address"
}

variable "data" {
  type = object(
    {
      algorithm      = optional(number)
      altitude       = optional(number)
      certificate    = optional(string)
      digest         = optional(string)
      digest_type    = optional(number)
      fingerprint    = optional(string)
      flags          = optional(any)
      key_tag        = optional(number)
      lat_degrees    = optional(number)
      lat_direction  = optional(string)
      lat_minute     = optional(number)
      lat_seconds    = optional(number)
      long_degrees   = optional(number)
      long_direction = optional(string)
      long_minute    = optional(number)
      long_seconds   = optional(number)
      matching_type  = optional(number)
      order          = optional(number)
      port           = optional(number)
      precision_horz = optional(number)
      precision_vert = optional(number)
      preference     = optional(number)
      priority       = optional(number)
      protocol       = optional(number)
      public_key     = optional(string)
      regex          = optional(string)
      replacement    = optional(string)
      selector       = optional(number)
      service        = optional(string)
      size           = optional(number)
      tag            = optional(string)
      target         = optional(string)
      type           = optional(number)
      usage          = optional(number)
      value          = optional(string)
      weight         = optional(number)
    }
  )
  default     = null
  description = "Components of a CAA record"
}

variable "priority" {
  type        = number
  default     = null
  description = "Required for MX, SRV and URI records"
}

variable "proxied" {
  type        = bool
  default     = false
  description = "Whether the record is receiving the performance and security benefits of Cloudflare"
}

variable "settings" {
  type = object(
    {
      flatten_cname = optional(bool)
      ipv4_only     = optional(bool)
      ipv6_only     = optional(bool)
    }
  )
  default     = {}
  description = "Settings for the DNS record"
}

variable "tags" {
  type        = list(string)
  default     = []
  description = "Custom tags for the DNS record"
}
