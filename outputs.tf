output "public_ip" {
  value = aws_instance.server.public_ip
}

output "instance_state" {
  value = aws_instance.server.instance_state
}

output "vpc_ip" {
  value = aws_vpc.vpc_diego.cidr_block

}

output "subnet_public_ip" {
  value = aws_subnet.subnet_public.cidr_block
}

output "subnet_private_ip" {
  value = aws_subnet.subnet_private.cidr_block
}

output "security_group_id" {
  value = aws_security_group.ec2-permission-sg.id

}