output "cfv_id" {
  description = "List of IDs of instances"
  value       = module.aws_cfv_instance.id
}

output "cfv_arn" {
  description = "List of ARNs of instances"
  value       = module.aws_cfv_instance.arn
}

output "cfv_public_dns" {
  description = "List of public DNS addresses assigned to the instances, if applicable"
  value       = module.aws_cfv_instance.public_dns
}

output "cfv_public_ip" {
  description = "List of public IP addresses assigned to the instances, if applicable"
  value       = module.aws_cfv_instance.public_ip
}

output "cfv_instance_state" {
  description = "List of instance states of instances"
  value       = module.aws_cfv_instance.instance_state
}

output "cfv_private_mgmt_ip" {
  description = "List of private IP addresses assigned to the instances"
  value       = module.aws_cfv_instance.private_ip
}

output "cfv_test_if_1_primary_ip" {
    value = module.aws_cfv_instance.test_if_1_primary_ip
}

output "cfv_test_if_2_primary_ip" {
    value = module.aws_cfv_instance.test_if_2_primary_ip
}

output "cfv_test_if_1_ips" {
    value = module.aws_cfv_instance.test_if_1_ips
}

output "cfv_test_if_2_ips" {
    value = module.aws_cfv_instance.test_if_2_ips
}

output "cfv_test_if_1_route" {
  description = "List of routes assigned to the instances"
  value       = module.aws_cfv_instance.test_if_1_route
}

output "cfv_test_if_2_route" {
  description = "List of routes assigned to the instances"
  value       = module.aws_cfv_instance.test_if_2_route
}