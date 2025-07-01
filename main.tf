resource "aws_vpc" "name" {
  cidr_block = var.aws_vpc_cidr_block
  tags = {
    Name = "my-vpc"
  }
}

resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.name.id
  cidr_block        = var.aws_subnet_cidr_block
  availability_zone = "us-east-2a"
  tags = {
    Name = "my-subnet-01"
  }
}

resource "aws_instance" "dummy" {
  ami = "ami-0d1b5a8c13042c939" #using ubuntu ami image
  instance_type = "t2.micro"
  subnet_id = aws_subnet.subnet.id
  associate_public_ip_address = true
  key_name = "k8s"
  tags = {
    Name = "ec2-server" 
}
}

