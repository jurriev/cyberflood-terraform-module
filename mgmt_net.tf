# # use already existing cfv_mgmt_subnet
# # can create manually with cidr block from variables file
# data "aws_subnet" "cfv_mgmt_subnet" {
#   tags = {
#     Name  = "cfv_mgmt_subnet"
#     Usage = var.common_tag
#   }
# }

# create internet gateway for management network
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.cfv_test_vpc.id
  tags = {
    Name  = "cfv_mgmt_igw"
    Usage = var.common_tag
  }
}

# creates cfv_mgmt_subnet - don't use if subnet already exists
resource "aws_subnet" "cfv_mgmt_subnet" {
  vpc_id                  = aws_vpc.cfv_test_vpc.id
  # vpc_id                  = data.aws_vpc.cfv_vpc.id
  availability_zone       = var.avail_zone
  cidr_block              = var.mgmt_subnet
  tags = {
    Name  = "cfv_mgmt_subnet"
    Usage = var.common_tag
  }
  
}

resource "aws_route_table" "rtb_public" {
  vpc_id = aws_vpc.cfv_test_vpc.id
route {
      cidr_block = "0.0.0.0/0"
      gateway_id = aws_internet_gateway.igw.id
  }
tags = {
    Name  = "cfv_mgmt_route_table"
    Usage = var.common_tag
  }
}

resource "aws_route_table_association" "rta_subnet_public" {
  subnet_id      = aws_subnet.cfv_mgmt_subnet.id
  route_table_id = aws_route_table.rtb_public.id
}