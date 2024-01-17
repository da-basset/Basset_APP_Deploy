output "Output_TheVPC_Resource_Private_Subnet_ID" {
    value = aws_subnet.TheVPC_Resource_Private_Subnet.id
}

output "Output_TheVPC_Resource_Public_Subnet_ID" {
    value = aws_subnet.TheVPC_Resource_Public_Subnet.id
}

output "TheVPC_Resource_Private_Subnet_CIDR" {
  value = aws_subnet.TheVPC_Resource_Private_Subnet.cidr_block
}

output "TheVPC_Resource_Public_Subnet_CIDR" {
  value = aws_subnet.TheVPC_Resource_Public_Subnet.cidr_block
}

output "TheVPC_ID" {
  value = aws_vpc.TheVPC_Resource.id
}