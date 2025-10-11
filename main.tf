module "service_quotas" {
  source = "./modules/service-quotas"

  ec2_vpc_eips      = 10
  natgw_per_az      = 10
  natgw_private_ips = 8
}

output "quota_request_ids" {
  description = "IDs of the quota requests"
  value       = module.service_quotas.requested_quotas
}
