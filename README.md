# terraform-cloudflare-dns_record

Terraform module to manage the following Cloudflare resources:

* cloudflare_dns_record

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "cloudflare_account" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-cloudflare-account/local"
  version = "1.0.0"

  name = "dhoppeIT"
  type = "standard"
}

module "cloudflare_zone" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-cloudflare-zone/local"
  version = "1.0.0"

  account = {
    id = module.cloudflare_account.id
  }
  name = "dhoppe.dev"
}

module "cloudflare_dns_record" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-cloudflare-dns-record/local"
  version = "1.0.0"

  zone_id = module.cloudflare_zone["dhoppe.dev"].id
  name    = "example.dhoppe.dev"
  ttl     = 3600
  type    = "A"

  content = "1.2.3.4"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | ~> 5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_dns_record.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/dns_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_comment"></a> [comment](#input\_comment) | Comments or notes about the DNS record | `string` | `null` | no |
| <a name="input_content"></a> [content](#input\_content) | A valid IPv4 address | `string` | `null` | no |
| <a name="input_data"></a> [data](#input\_data) | Components of a CAA record | ```object( { algorithm = optional(number) altitude = optional(number) certificate = optional(string) digest = optional(string) digest_type = optional(number) fingerprint = optional(string) flags = optional(any) key_tag = optional(number) lat_degrees = optional(number) lat_direction = optional(string) lat_minute = optional(number) lat_seconds = optional(number) long_degrees = optional(number) long_direction = optional(string) long_minute = optional(number) long_seconds = optional(number) matching_type = optional(number) order = optional(number) port = optional(number) precision_horz = optional(number) precision_vert = optional(number) preference = optional(number) priority = optional(number) protocol = optional(number) public_key = optional(string) regex = optional(string) replacement = optional(string) selector = optional(number) service = optional(string) size = optional(number) tag = optional(string) target = optional(string) type = optional(number) usage = optional(number) value = optional(string) weight = optional(number) } )``` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | DNS record name (or @ for the zone apex) in Punycode | `string` | n/a | yes |
| <a name="input_priority"></a> [priority](#input\_priority) | Required for MX, SRV and URI records | `number` | `null` | no |
| <a name="input_proxied"></a> [proxied](#input\_proxied) | Whether the record is receiving the performance and security benefits of Cloudflare | `bool` | `false` | no |
| <a name="input_settings"></a> [settings](#input\_settings) | Settings for the DNS record | ```object( { flatten_cname = optional(bool) ipv4_only = optional(bool) ipv6_only = optional(bool) } )``` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Custom tags for the DNS record | `list(string)` | `[]` | no |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | Time To Live (TTL) of the DNS record in seconds | `number` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | Record type | `string` | n/a | yes |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | Identifier | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_comment_modified_on"></a> [comment\_modified\_on](#output\_comment\_modified\_on) | When the record comment was last modified |
| <a name="output_created_on"></a> [created\_on](#output\_created\_on) | When the record was created |
| <a name="output_id"></a> [id](#output\_id) | Identifier |
| <a name="output_meta"></a> [meta](#output\_meta) | Extra Cloudflare-specific information about the record |
| <a name="output_modified_on"></a> [modified\_on](#output\_modified\_on) | When the record was last modified |
| <a name="output_proxiable"></a> [proxiable](#output\_proxiable) | Whether the record can be proxied by Cloudflare or not |
| <a name="output_tags_modified_on"></a> [tags\_modified\_on](#output\_tags\_modified\_on) | When the record tags were last modified |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
