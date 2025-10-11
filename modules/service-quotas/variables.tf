variable "ec2_vpc_eips" {
  description = "Requested number of EC2-VPC Elastic IPs"
  type        = number
}

variable "natgw_per_az" {
  description = "Requested number of NAT gateways per Availability Zone"
  type        = number
}

variable "natgw_private_ips" {
  description = "Requested number of private IPs per NAT gateway"
  type        = number
}
