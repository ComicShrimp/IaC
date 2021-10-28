variable "region" {
  description = "Define the region in wich region the instance will be deployed"
  default     = "us-east-1"
}

variable "name" {
  description = "Name of the application"
  default     = "server01"
}
variable "env" {
  description = "Environment of the application"
  default     = "prod"
}

variable "ami" {
  description = "AWS AMI to be used"
  default     = "ami-09e67e426f25ce0d7"
}

variable "instance_type" {
  description = "AWS instance type"
  default     = "t2.micro"
}

variable "repo" {
  description = "Repository of the application"
  default     = "github.com/ComicShrimp/IaC"
}
