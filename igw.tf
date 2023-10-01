resource "aws_internet_gateway" "meu_igw" {
  vpc_id = aws_vpc.vpc_diego.id

  tags = {
    Name = "meu_igw"
  }
}

#resource "aws_internet_gateway_attachment" "meu_igw_attach" {
#  internet_gateway_id = aws_internet_gateway.meu_igw.id
#  vpc_id              = aws_vpc.vpc_diego.id
#}