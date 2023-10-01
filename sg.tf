resource "aws_security_group" "ec2-permission-sg" {
  name        = "ec2-permission-sg"
  description = "ec2-permission-sg"
  vpc_id      = aws_vpc.vpc_diego.id

  ingress {
    description = "Allow SSH from my IP"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["186.249.25.0/24"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "ec2-permission-sg"
  }
}