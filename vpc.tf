# # use existing vpc named cfv_vpc
# # can create manually using cidr_block in variables file
# data "aws_vpc" "cfv_vpc" {
#   tags = {
#     Name = "cfv_vpc"
#     Usage = var.common_tag
#   }
# }
# # Use example: data.aws_vpc.jb_vpc.id

# vpc and subnet
resource "aws_vpc" "cfv_test_vpc" {
  cidr_block           = var.vpc_cidr_ipv4
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name  = "cfv_vpc"
    Usage = var.common_tag
  }
}