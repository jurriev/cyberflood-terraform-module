locals {
  is_t_instance_type = replace(var.instance_type, "/^t(2|3|3a){1}\\..*$/", "1") == "1" ? true : false
}

resource "aws_instance" "this" {
  ami              = var.ami
  instance_type    = var.instance_type

  subnet_id = var.subnet_id
  # subnet_id = length(var.network_interface) > 0 ? null : element(
  #  distinct(compact(concat([var.subnet_id], var.subnet_ids))),
  #  count.index,
  #)
  key_name               = var.key_name
  vpc_security_group_ids = var.security_groups_mgmt_interface

  associate_public_ip_address = var.associate_public_ip_address
  private_ip = var.private_ip
  # private_ip = length(var.private_ips) > 0 ? element(var.private_ips, count.index) : var.private_ip

#   dynamic "network_interface" {
#     for_each = var.network_interface
#     content {
#       device_index          = network_interface.value.device_index
#       network_interface_id  = lookup(network_interface.value, "network_interface_id", null)
#       delete_on_termination = lookup(network_interface.value, "delete_on_termination", false)
#     }
#   }
  source_dest_check                    = var.source_dest_check
  placement_group                      = var.placement_group
  
  tags = merge(
    var.tags,
    {
      "Name" = format("%s", var.name)
    },
  )

}