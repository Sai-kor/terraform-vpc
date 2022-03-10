## root module-- main code

resource "aws_vpc" "main" {
  cidr_block       = var.VPC_CIDR //dynamic based on the env
  enable_dns_hostnames = true
  enable_dns_support = true // these 2 dns should be enabled for vpc to work with dns hosted zone
  tags = {
    Name = var.ENV
  }
}

