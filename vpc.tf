resource "aws_vpc" "vpc_diego" {
  cidr_block           = var.ip_vpc
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "vpc_diego"
  }

}

resource "aws_subnet" "subnet_public" {
  vpc_id     = aws_vpc.vpc_diego.id
  cidr_block = var.public_subnet_ip

  tags = {
    Name = "subnet_public"
  }
}

resource "aws_subnet" "subnet_private" {
  vpc_id     = aws_vpc.vpc_diego.id
  cidr_block = var.private_subnet_ip

  tags = {
    Name = "subnet_private"
  }
}