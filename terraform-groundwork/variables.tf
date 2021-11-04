variable "vpc_cidr_block" {
  description = "Range of IPv4 address for the VPC"
  type        = string
  default     = "172.17.0.0/16"
}

variable "region" {
  description = "Define the region in wich region the instance will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "az_count" {
  description = "Number of availability zones"
  type        = number
  default     = 2
}
