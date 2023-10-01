resource "aws_instance" "server" {
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.subnet_public.id
  security_groups = [aws_security_group.ec2-permission-sg.id]

  tags = {
    Name        = var.name
    Environment = var.env
    Provisioner = "Terraform"
    Source      = var.rep
  }
}


resource "aws_instance" "server2" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.subnet_public.id
  security_groups             = [aws_security_group.ec2-permission-sg.id]
  associate_public_ip_address = true
  key_name                    = "minha_chave"

  root_block_device {
    volume_type = "gp3"
    volume_size = 30
  }

  tags = {
    Name        = var.name
    Environment = var.env
    Provisioner = "Terraform"
    Source      = var.rep
  }
}
