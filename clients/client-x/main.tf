module "aws_alb_and_hosted_zone" {
  source = "./aws-alb-hosted-zone-module" # Path to the module directory

  public_hosted_zone_name = "example.com"
  certificate_name = "example.com"
  # certificate_arn is optional and not provided here, so a new certificate will be generated.
}

output "created_hosted_zone_ns_records" {
  value = module.aws_alb_and_hosted_zone.hosted_zone_ns_records
}
