resource "aws_instance" "demo-ec2" {
  ami = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  associate_public_ip_address = true
  security_groups = [aws_security_group.demo-sg.id]
  subnet_id = aws_subnet.demo-subnet.id
}