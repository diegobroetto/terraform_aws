resource "aws_route_table" "subnet_public_rt" {
  vpc_id = aws_vpc.vpc_diego.id

  route {
    cidr_block = "0.0.0.0/24"
    gateway_id = aws_internet_gateway.meu_igw.id
  }

  tags = {
    Name = "subnet_public_rt"
  }

}

resource "aws_route_table_association" "subnet_public_rt_a" {
  subnet_id      = aws_subnet.subnet_public.id
  route_table_id = aws_route_table.subnet_public_rt.id
}

resource "aws_route_table" "subnet_private_rt" {
  vpc_id = aws_vpc.vpc_diego.id

  route {
    cidr_block = "0.0.0.0/24"
    gateway_id = aws_nat_gateway.nat_gateway.id
  }

  tags = {
    Name = "subnet_private_rt"
  }

}

resource "aws_route_table_association" "subnet_private_rt_b" {
  subnet_id      = aws_subnet.subnet_private.id
  route_table_id = aws_route_table.subnet_private_rt.id

}