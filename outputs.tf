output "VPC_ID" {
  value = aws_vpc.main.id
}

output "VPC_CIDR" {
  value = var.VPC_CIDR
}

output "PUBLIC_SUBNETS" {
  value = aws_subnet.public-subnets.*.id
}

output "PRIVATE_SUBNETS" {
  value = aws_subnet.private-subnets.*.id
}

output "PUBLIC_CIDR" {
  value = var.PUBLIC_SUBNET_CIDR
}

output "PRIVATE_CIDR" {
  value = var.PRIVATE_SUBNET_CIDR
}