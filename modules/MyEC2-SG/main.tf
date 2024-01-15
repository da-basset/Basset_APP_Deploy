resource "aws_security_group" "MyEC2_SG_Resource" {
  name = "EC2-SG"
  description = "The security group for the EC2 instance"
  vpc_id = var.EC2_SG_VPC_ID

  tags = {
    name = "Control SG Access EC2"
  }
}

resource "aws_security_group_rule" "SG_EC2_Inbound_Rule" {
  security_group_id = aws_security_group.MyEC2_SG_Resource.id
  type = "ingress"
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "SG_EC2_Outbound_Rule" {
  security_group_id = aws_security_group.MyEC2_SG_Resource.id
  type = "egress"
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
}
