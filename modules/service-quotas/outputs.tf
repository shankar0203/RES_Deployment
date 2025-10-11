output "requested_quotas" {
  description = "List of requested AWS service quota changes"
  value = {
    ec2_vpc_eips       = aws_servicequotas_service_quota.ec2_vpc_eips.id
    natgw_per_az       = aws_servicequotas_service_quota.natgw_per_az.id
    natgw_private_ips  = aws_servicequotas_service_quota.natgw_private_ips.id
  }
}
