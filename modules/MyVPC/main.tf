resource "aws_vpc" "TheVPC_Resource" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true

  tags = {
    name = "Prod VPC"
  }
}

resource "aws_subnet" "TheVPC_Resource_Public_Subnet" {
  vpc_id = aws_vpc.TheVPC_Resource.id
  map_public_ip_on_launch = true
  availability_zone = "us-west-2b"
  //cidr_block = aws_vpc.TheVPC_Resource.cidr_block
  cidr_block = "10.0.1.0/24"
}

resource "aws_subnet" "TheVPC_Resource_Private_Subnet" {
  vpc_id = aws_vpc.TheVPC_Resource.id
  map_public_ip_on_launch = false
  availability_zone = "us-west-2b"
  //cidr_block = aws_vpc.TheVPC_Resource.cidr_block
  cidr_block = "10.0.10.0/24"
}
