variable "vpc_cidr_block" {
  description = "Range of IPv4 address for the VPC"
  default     = "172.17.0.0/16"
}

variable "region" {
  description = "Define the region in wich region the instance will be deployed"
  default     = "us-east-1"
}
