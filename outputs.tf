
# output "cfv_a_arn" {
#   description = "List of ARNs of instances"
#   value       = aws_instance.cfv_a.*.arn
# }

# output "cfv_a_instance_type" {
#     description = "instance_type"
#     value       = aws_instance.cfv_a.*.instance_type
# }

# output "cfv_a_public_ip" {
#   description = "List of public IP addresses assigned to the instances, if applicable"
#   value       = aws_instance.cfv_a.*.public_ip
# }

# output "cfv_a_public_dns" {
#   description = "List of public DNS addresses assigned to the instances, if applicable"
#   value       = aws_instance.cfv_a.*.public_dns
# }

# output "cfv_a_private_ip" {
#   description = "List of private IP addresses assigned to the instances"
#   value       = aws_instance.cfv_a.*.private_ip
# }

# output "cfv_a_test_if_1_ip" {
#     value = aws_network_interface.test_if_1.*.private_ip
# }

# output "cfv_a_test_if_1_ips" {
#     value = aws_network_interface.test_if_1.*.private_ips
# }

# output "cfv_a_test_if_2_ip" {
#     value = aws_network_interface.test_if_2.*.private_ip
# }

# output "cfv_a_test_if_2_ips" {
#     value = aws_network_interface.test_if_2.*.private_ips
# }