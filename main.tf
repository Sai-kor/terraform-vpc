## root module-- main code

resource "aws_vpc" "main" {
  cidr_block       = var.VPC_CIDR //dynamic based on the env
  tags = {
    Name = var.ENV
  }
}