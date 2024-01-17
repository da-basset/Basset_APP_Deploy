output "EC2_Instance_URL" {
  value = aws_instance.TheEC2_Resource.private_dns
}
