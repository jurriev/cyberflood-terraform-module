variable "common_tag" {
  default = "cfv_test"
}

variable "public_ip_access_list" {
  description = "Add IPs that are allowed to access the management IP"
  default = ["23.242.173.112/32", "74.62.253.130/32"]
}

variable "aws_region" {
  description = "The AWS region to create things in."
  default     = "us-west-2"
}

variable "avail_zone" {
  default = "us-west-2a"
}

variable "aws_cfv_amis" {
  default = {
    # spirent-cfv-release_cfvu-20.1.0.0443.250
    "us-west-2" = "ami-0449cc53fbee3264b"
    # spirent-cfv-release_cfvu-19.4.1.0414.244
    # "us-west-2" = "ami-023396eb4582543b6"
    # example for other region lookup 
    "us-east-1" = "ami-0511bc8f01425b039"
  }
}

variable "instance_type" {
  default = {
    "us-west-2" = "c5.xlarge"
    # "us-west-2" = "c5.9xlarge"
    
  }
}

variable "vpc_cidr_ipv4" {
  default = "172.22.0.0/16"
}

# subnet & interface config

variable "mgmt_subnet" {
  default = "172.22.0.0/24"
}

variable "cfv_key_pair" {
  description = "Name of the SSH keypair to use in AWS."
  default     = "jb1"
}

