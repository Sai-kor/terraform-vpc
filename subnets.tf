resource "aws_subnet" "public-subnets" {
  count      = length(var.PUBLIC_SUBNET_CIDR)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.PUBLIC_SUBNET_CIDR[count.index]

  tags = {
    Name = "${var.ENV}-public-subnet-${count.index+1}"
    ENV  = var.ENV
  }
}

resource "aws_subnet" "private-subnets" {
  count      = length(var.PRIVATE_SUBNET_CIDR)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.PRIVATE_SUBNET_CIDR[count.index]

  tags = {
    Name = "${var.ENV}-private-subnet-${count.index+1}"
    ENV  = var.ENV
  }
}


