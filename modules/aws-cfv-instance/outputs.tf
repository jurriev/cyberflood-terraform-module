output "id" {
  description = "List of IDs of instances"
  value       = aws_instance.this.*.id
}

output "arn" {
  description = "List of ARNs of instances"
  value       = aws_instance.this.*.arn
}

output "public_dns" {
  description = "List of public DNS names assigned to the instances. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC"
  value       = aws_instance.this.*.public_dns
}

output "public_ip" {
  description = "List of public IP addresses assigned to the instances, if applicable"
  value       = aws_instance.this.*.public_ip
}

output "private_dns" {
  description = "List of private DNS names assigned to the instances. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC"
  value       = aws_instance.this.*.private_dns
}

output "private_ip" {
  description = "List of private IP addresses assigned to the instances"
  value       = aws_instance.this.*.private_ip
}

output "instance_state" {
  description = "List of instance states of instances"
  value       = aws_instance.this.*.instance_state
}

output "tags" {
  description = "List of tags of instances"
  value       = aws_instance.this.*.tags
}

output "test_if_1_primary_ip" {
  description = "List of private IP addresses assigned to the instances"
  value       = aws_network_interface.test_if_1.*.private_ip
}

output "test_if_2_primary_ip" {
  description = "List of private IP addresses assigned to the instances"
  value       = aws_network_interface.test_if_2.*.private_ip
}

output "test_if_1_ips" {
  description = "List of private IP addresses assigned to the instances"
  value       = aws_network_interface.test_if_1.*.private_ips
}

output "test_if_2_ips" {
  description = "List of private IP addresses assigned to the instances"
  value       = aws_network_interface.test_if_2.*.private_ips
}

output "test_if_1_route" {
  description = "List of routes assigned to the instances"
  value       = aws_route.cfv_test_int_1.*.destination_cidr_block
}

output "test_if_2_route" {
  description = "List of routes assigned to the instances"
  value       = aws_route.cfv_test_int_2.*.destination_cidr_block
}