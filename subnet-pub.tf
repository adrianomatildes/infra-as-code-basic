resource "aws_subnet" "pub" {
  tags = {
    "Name" = "pub"
  }
  vpc_id                  = aws_vpc.iac.id
  availability_zone       = var.availability_zone_pub
  cidr_block              = var.subnet_cidr_block_pub
  map_public_ip_on_launch = var.map_public_ip_on_launch
}