VPC_CIDR = "10.0.0.0/16"
ENV = "dev"
PUBLIC_SUBNET_CIDR = ["10.0.0.0/24","10.0.1.0/24"] // if a 3rd subnet is given it picks 1c AZ and then 1d and goes on and nerver error out as a default functionality in terraform
PRIVATE_SUBNET_CIDR = ["10.0.100.0/24","10.0.101.0/24"] //chosen wide different range between these two