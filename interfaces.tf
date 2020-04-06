# resource "aws_network_interface" "mgmt_if" {
#   # subnet_id       = aws_subnet.jb_mgmt_subnet.id
#   subnet_id       = "subnet-0e4d1b5ac4eb48913"
#   # availability_zone = var.avail_zone
#   security_groups = [aws_security_group.public.id]
#   source_dest_check = false
#   private_ips = var.ip_cfv_mgmt_a

#   tags = {
#     Name  = "jb_mgmt_if"
#     Usage = var.common_tag
#   }
# }

# resource "aws_network_interface" "test_if_1" {
#   subnet_id       = aws_subnet.jb_test_net_1.id
#   # availability_zone = var.avail_zone
#   security_groups = [aws_security_group.internal.id]
#   source_dest_check = false
#   private_ips = var.ips_cfv_a1

#   attachment {
#     instance     = aws_instance.cfv_a.id
#     device_index = "1"
#   }
#   tags = {
#     Name  = "jb_cfv_a_if_1"
#     Usage = var.common_tag
#   }
# }

# resource "aws_network_interface" "test_if_2" {
#   subnet_id       = aws_subnet.jb_test_net_2.id
#   # availability_zone = var.avail_zone
#   security_groups = [aws_security_group.internal.id]
#   source_dest_check = false
#   private_ips = var.ips_cfv_a2
  
#   attachment {
#     instance     = aws_instance.cfv_a.id
#     device_index = "2"
#   }
#   tags = {
#     Name  = "jb_cfv_a_if_2"
#     Usage = var.common_tag
#   }
# }