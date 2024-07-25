resource "aws_vpc" "lms_vpc" {
  cidr_block = var.cidr_block
  
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.lms_vpc.id
  cidr_block        = var.public_subnet_cidr_block 
  availability_zone = var.public_availability_zone
  map_public_ip_on_launch = true

  tags = {
    Name = var.public_subnet_name
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id            = aws_vpc.lms_vpc.id
  cidr_block        = var.private_subnet_cidr_block
  availability_zone = var.private_availability_zone
  
  tags = {
    Name = var.private_subnet_name
  }
}

resource "aws_internet_gateway" "lms_igw" {
  vpc_id = aws_vpc.lms_vpc.id
}

resource "aws_route_table" "public_subnet_rt" {
  vpc_id = aws_vpc.lms_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lms_igw.id
  }
}

resource "aws_route_table" "private_subnet_rt" {
  vpc_id = aws_vpc.lms_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.lms-nat.id
  }
}

resource "aws_route_table_association" "public_subnet_rt_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_subnet_rt.id
}

resource "aws_route_table_association" "private_subnet_rt_association" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = aws_route_table.private_subnet_rt.id
}

resource "aws_eip" "lms-eip" {
  domain   = "vpc"
  tags = {
    Name = var.lms_eip_name
  }
}

resource "aws_nat_gateway" "lms-nat" {
  allocation_id = aws_eip.lms-eip.id
  subnet_id     = aws_subnet.public_subnet.id

  tags = {
    Name = var.nat_gw_name
  }
}
