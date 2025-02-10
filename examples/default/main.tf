module "cloudflare_dns_record" {
  source = "../../"

  zone_id = data.cloudflare_zones.this.result[0].id
  content = "1.2.3.4"
  name    = "example.dhoppe.dev"
  ttl     = 3600
  type    = "A"
}
