resource "aws_vpc" "name" {
  name = "terraform-vpc"
  cidr_block = var.aws_vpc_cidr_block
  
}

resource "aws_subnet" "name" {
  vpc_id = var.aws_vpc.name.id
  cidr_block =  var.aws_subnet_cidr_block
  tags = {
    Name = "terraform-subnet-01"
  }
}