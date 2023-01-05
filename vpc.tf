# Resource: aws_vpc
# Provides a VPC resource
resource "aws_vpc" "VPC_Pragma" {
  cidr_block           = var.CIDR_VPC[0]
  enable_dns_hostnames = true

  tags = {
      Name = "VPC_Pragma"
    }
}

# Resource: aws_internet_gateway
# Provides a resource to create a VPC Internet Gateway
resource "aws_internet_gateway" "gw_Pragma" {
  vpc_id = aws_vpc.VPC_Pragma.id

  tags = {
      Name = "Gateway_Pragma"
    }
}