resource "aws_network_interface" "test_if_1" {
  subnet_id       = aws_subnet.cfv_test_net_1.id
  security_groups = var.security_groups_test_interface
  source_dest_check = false
  private_ips = var.private_test_ips_interface_1

  attachment {
    instance     = aws_instance.this.id
    device_index = "1"
  }
  
  tags = merge(
    var.tags,
    {
      "Name" = format("%s", var.name)
    },
  )
}

resource "aws_network_interface" "test_if_2" {
  subnet_id       = aws_subnet.cfv_test_net_2.id
  security_groups = var.security_groups_test_interface
  source_dest_check = false
  private_ips = var.private_test_ips_interface_2
  
  attachment {
    instance     = aws_instance.this.id
    device_index = "2"
  }

  tags = merge(
    var.tags,
    {
      "Name" = format("%s", var.name)
    },
  )
}