resource "aws_vpc" "name" {
  cidr_block = var.aws_vpc_cidr_block
  tags = {
    Name = "terraform-vpc"
  }
}

resource "aws_subnet" "name" {
  vpc_id = var.aws.vpc.id
  cidr_block =  var.aws_subnet_cidr_block
  tags = {
    Name = "terraform-subnet-01"
  }
}