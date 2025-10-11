# Module to request AWS Service Quota increases

resource "aws_servicequotas_service_quota" "ec2_vpc_eips" {
  service_code = "ec2"
  quota_code   = "L-0263D0A3"
  value        = var.ec2_vpc_eips
}

resource "aws_servicequotas_service_quota" "natgw_per_az" {
  service_code = "vpc"
  quota_code   = "L-FE5A380F"
  value        = var.natgw_per_az
}

resource "aws_servicequotas_service_quota" "natgw_private_ips" {
  service_code = "vpc"
  quota_code   = "L-DFA99DE7"
  value        = var.natgw_private_ips
}
