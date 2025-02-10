output "comment_modified_on" {
  description = "When the record comment was last modified"
  value       = cloudflare_dns_record.this.comment_modified_on
}

output "created_on" {
  description = "When the record was created"
  value       = cloudflare_dns_record.this.created_on
}

output "id" {
  description = "Identifier"
  value       = cloudflare_dns_record.this.id
}

output "meta" {
  description = "Extra Cloudflare-specific information about the record"
  value       = cloudflare_dns_record.this.meta
}

output "modified_on" {
  description = "When the record was last modified"
  value       = cloudflare_dns_record.this.modified_on
}

output "proxiable" {
  description = "Whether the record can be proxied by Cloudflare or not"
  value       = cloudflare_dns_record.this.proxiable
}

output "tags_modified_on" {
  description = "When the record tags were last modified"
  value       = cloudflare_dns_record.this.tags_modified_on
}
