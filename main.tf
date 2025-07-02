resource "aws_vpc" "name" {
  cidr_block = var.aws_vpc_cidr_block
  tags = {
    Name = "my-vpc"
  }
}
