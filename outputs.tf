output "ids" {
  description = "List of IDs of instances"
  value       = module.ec2_instances.id
}

output "instances_public_ips"  { #"instance_ips"
  description = "Public IPs assigned to the EC2 instance"
  value       = module.ec2_instances.public_ip #aws_instance.ec2.pub.public_ip 
}