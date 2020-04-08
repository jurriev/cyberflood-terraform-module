resource "aws_instance" "this" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  key_name               = var.key_name
  vpc_security_group_ids = var.security_groups_mgmt_interface

  associate_public_ip_address = var.associate_public_ip_address
  private_ip                  = var.private_ip
  source_dest_check           = var.source_dest_check
  placement_group             = var.placement_group
  
  tags = merge(
    var.tags,
    {
      "Name" = format("%s", var.name)
    },
  )

}