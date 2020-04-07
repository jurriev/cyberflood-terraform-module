resource "aws_route" "cfv_test_int_1" {
  route_table_id = var.route_table_id
  network_interface_id = aws_network_interface.test_if_1.id
  destination_cidr_block = var.cfv_destination_cidr_int_1 
}

resource "aws_route" "cfv_test_int_2" {
  route_table_id = var.route_table_id
  network_interface_id = aws_network_interface.test_if_2.id
  destination_cidr_block = var.cfv_destination_cidr_int_2
}