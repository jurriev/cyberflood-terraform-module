# module variable example https://github.com/terraform-aws-modules/terraform-aws-ec2-instance/blob/v2.13.0/variables.tf

variable "name" {
  description = "Name to be used on all resources as prefix"
  type        = string
}

variable "ami" {
  description = "ID of AMI to use for the instance"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC where to create test subnets"
  type        = string
}

variable "route_table_id" {
  description = "ID of the main route table associated with this VPC"
  type        = string
}

variable "availability_zone" {
  description = "availability_zone where to create test subnets"
  type        = string
}

variable "placement_group" {
  description = "The Placement Group to start the instance in"
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
}

variable "key_name" {
  description = "The key name to use for the instance"
  type        = string
  default     = ""
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
  type        = string
  default     = ""
}

variable "associate_public_ip_address" {
  description = "If true, the EC2 instance will have associated public IP address"
  type        = bool
  default     = null
}

variable "private_ip" {
  description = "Private IP address to associate with the instance in a VPC"
  type        = string
  default     = null
}

variable "source_dest_check" {
  description = "Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs."
  type        = bool
  default     = true
}

variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default     = {}
}

variable "test_net_1_cidr_block" {
  description = "The CIDR block for test subnet 1"
  type        = string
  default     = ""
}

variable "test_net_2_cidr_block" {
  description = "The CIDR block for test subnet "
  type        = string
  default     = ""
}

variable "private_test_ips_interface_1" {
  description = "Private IP addresses to associate with test interface 1"
  type        = list(string)
  default     = []
}

variable "private_test_ips_interface_2" {
  description = "Private IP addresses to associate with test interface 2"
  type        = list(string)
  default     = []
}

variable "security_groups_mgmt_interface" {
  description = "Security groups for the management interface and public IP"
  type        = list(string)
  default     = []
}

variable "cfv_destination_cidr_int_1" {
  description = "The destination CIDR route block for interface 1"
  type        = string
  default     = ""
}

variable "cfv_destination_cidr_int_2" {
  description = "The destination CIDR route block for interface 2"
  type        = string
  default     = ""
}

variable "security_groups_test_interface" {
  description = "Security groups for the test interfaces and private IPs"
  type        = list(string)
  default     = []
}
