resource "aws_route_table" "public-table" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "public-rt"
    ENV = var.ENV
  }
}

resource "aws_route_table" "private-table" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "private-rt"
    ENV = var.ENV
  }
}

resource "aws_route_table_association" "public" {
  count = length(aws_subnet.public-subnets)
  subnet_id      = aws_subnet.public-subnets.*.id[count.index]
  route_table_id = aws_route_table.public-table.id
}

resource "aws_route_table_association" "private" {
  count = length(aws_subnet.private-subnets)
  subnet_id      = aws_subnet.private-subnets.*.id[count.index]
  route_table_id = aws_route_table.private-table.id
}


#route {
#  cidr_block = "10.0.1.0/24"
#  gateway_id = aws_internet_gateway.example.id
#}
#
#route {
#  ipv6_cidr_block        = "::/0"
#  egress_only_gateway_id = aws_egress_only_internet_gateway.example.id
#}
