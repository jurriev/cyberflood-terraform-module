# Specify the provider and access details
provider "aws" {
  region = var.aws_region
  #  version = "~> 2.0"
}

# Cluster placement group place the resources in close proximity
# This provides the best performance for testing purposes
resource "aws_placement_group" "performance" {
  name     = "cfv_cluster-pg"
  strategy = "cluster"
}

module "aws_cfv_instance" {
  source = "./modules/aws-cfv-instance"

  name = "cfv_d"
  ami = lookup(var.aws_cfv_amis, var.aws_region)
  instance_type = lookup(var.instance_type, var.aws_region)
  vpc_id = aws_vpc.cfv_test_vpc.id
  route_table_id = aws_vpc.cfv_test_vpc.main_route_table_id
  availability_zone = var.avail_zone
  placement_group = aws_placement_group.performance.id

  key_name = var.cfv_key_pair
  subnet_id = aws_subnet.cfv_mgmt_subnet.id
  security_groups_mgmt_interface = [aws_security_group.public.id]
  security_groups_test_interface = [aws_security_group.internal.id]
  associate_public_ip_address = true
  source_dest_check = false
  private_ip = "172.22.0.5"
  test_net_1_cidr_block = "172.22.1.0/24"
  private_test_ips_interface_1 = ["172.22.1.10"]
  cfv_destination_cidr_int_1 = "10.10.101.0/24"
  test_net_2_cidr_block = "172.22.2.0/24"
  private_test_ips_interface_2 = ["172.22.2.10"]
  cfv_destination_cidr_int_2 = "10.10.102.0/24"


  tags = {
    Name  = "cfv_d"
    Usage = var.common_tag
  }

}