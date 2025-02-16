resource "aws_vpc" "demo-vpc" {
  cidr_block = "10.10.0.0/16"
}

resource "aws_subnet" "demo-subnet" {
  vpc_id = aws_vpc.demo-vpc.id
  cidr_block = "10.10.1.0/24"
  map_public_ip_on_launch = "true"
}

resource "aws_internet_gateway" "ig" {
  vpc_id = aws_vpc.demo-vpc.id
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.demo-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig.id
  }
}

resource "aws_route_table_association" "rta" {
  subnet_id = aws_subnet.demo-subnet.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_security_group" "demo-sg" {
  name = "demo-sg"
  vpc_id = aws_vpc.demo-vpc.id

    ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

}
