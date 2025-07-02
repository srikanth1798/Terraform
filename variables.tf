variable "aws_vpc_cidr_block" {
  description = "cidr block for vpc"
  type        = string
  default     = "10.0.0.0/16"

}
variable "aws_subnet_cidr_block" {
  type    = string
  default = "10.0.0.16/28"

}
